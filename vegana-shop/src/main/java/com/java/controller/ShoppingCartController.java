package com.java.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import com.java.dto.InvoiceDTO;
import com.java.service.PaypalService;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.java.entity.CartItem;
import com.java.entity.Customer;
import com.java.entity.Order;
import com.java.entity.OrderDetail;
import com.java.entity.Product;
import com.java.repository.CustomersRepository;
import com.java.repository.OrderDetailRepository;
import com.java.repository.OrderRepository;
import com.java.repository.ProductRepository;

import com.java.service.SendMailService;
import com.java.service.ShoppingCartService;
import com.java.service.WishListService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ShoppingCartController extends CommonController {

	@Autowired
	PaypalService service;

	public static final String SUCCESS_URL = "pay/success";
	public static final String CANCEL_URL = "pay/cancel";

	@Autowired
	ProductRepository productRepository;

	@Autowired
	OrderRepository orderRepository;

	@Autowired
	OrderDetailRepository orderDetailRepository;

	@Autowired
	CustomersRepository customersRepository;

	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	WishListService wishListService;

	@Autowired
	SendMailService sendMailService;

	@Autowired
	HttpSession session;

	public ShoppingCartController(ProductRepository productRepository, OrderRepository orderRepository,
			OrderDetailRepository orderDetailRepository, ShoppingCartService shoppingCartService,
			CustomersRepository customersRepository, SendMailService sendMailService, WishListService wishListService) {
		this.productRepository = productRepository;
		this.orderRepository = orderRepository;
		this.orderDetailRepository = orderDetailRepository;
		this.shoppingCartService = shoppingCartService;
		this.customersRepository = customersRepository;
		this.sendMailService = sendMailService;
		this.wishListService = wishListService;
	}

	@GetMapping(value = "/carts")
	public String shoppingCart(Model model) {
		Collection<CartItem> cartItems = shoppingCartService.getCartItems();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("total", shoppingCartService.getAmount());
		double totalPrice = 0;
		for (CartItem cartItem : cartItems) {
			double price = cartItem.getQuantity() * cartItem.getProduct().getPrice();
			totalPrice += price - (price * cartItem.getProduct().getDiscount() / 100);
		}

		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("totalCartItemWishs", wishListService.getCount());
		model.addAttribute("totalCartItems", shoppingCartService.getCount());
		
		return "site/shoppingCart";
	}

	// add cartItem
	@GetMapping(value = "/addToCart")
	public String add(@RequestParam("productId") Integer productId, HttpServletRequest request, Model model) {

		Product product = productRepository.findById(productId).orElse(null);

		session = request.getSession();
		Collection<CartItem> cartItems = shoppingCartService.getCartItems();
		if (product != null) {
			CartItem item = new CartItem();
			BeanUtils.copyProperties(product, item);
			item.setQuantity(1);
			item.setProduct(product);
			item.setProductId(productId);
			shoppingCartService.add(item);
		}
		session.setAttribute("cartItems", cartItems);
		model.addAttribute("totalCartItemWishs", wishListService.getCount());
		model.addAttribute("totalCartItems", shoppingCartService.getCount());
		
		return "redirect:/carts";
	}

	// delete cartItem
	@SuppressWarnings("unlikely-arg-type")
	@GetMapping(value = "/remove/{id}")
	public String remove(@PathVariable("id") Integer id, HttpServletRequest request, Model model) {
		Product product = productRepository.findById(id).orElse(null);

		Collection<CartItem> cartItems = shoppingCartService.getCartItems();
		session = request.getSession();
		if (product != null) {
			CartItem item = new CartItem();
			BeanUtils.copyProperties(product, item);
			item.setProduct(product);
			cartItems.remove(session);
			shoppingCartService.remove(item);
		}
		model.addAttribute("totalCartItemWishs", wishListService.getCount());
		model.addAttribute("totalCartItems", shoppingCartService.getCount());
		
		return "redirect:/carts";
	}

	// show check out
	@GetMapping(value = "/checkout")
	public String checkOut(Model model) {

		Order order = new Order();
		model.addAttribute("order", order);

		Collection<CartItem> cartItems = shoppingCartService.getCartItems();
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("total", shoppingCartService.getAmount());
		model.addAttribute("NoOfItems", shoppingCartService.getCount());
		double totalPrice = 0;
		for (CartItem cartItem : cartItems) {
			double price = cartItem.getQuantity() * cartItem.getProduct().getPrice();
			totalPrice += price - (price * cartItem.getProduct().getDiscount() / 100);
		}

		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("totalCartItemWishs", wishListService.getCount());
		model.addAttribute("totalCartItems", shoppingCartService.getCount());


		return "site/checkOut";
	}

	// submit checkout
	@PostMapping(value = "/checkout")
	@Transactional
	public String checkedOut(Model model, Order order, HttpServletRequest request, Principal principal) {

		session = request.getSession();
		Collection<CartItem> cartItems = shoppingCartService.getCartItems();
		
		Customer c = customersRepository.FindByEmail(principal.getName()).get();

		double totalPrice = 0;

		for (CartItem cartItem : cartItems) {

			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setQuantity(cartItem.getQuantity());
			orderDetail.setOrder(order);
			orderDetail.setProduct(cartItem.getProduct());

			double price = cartItem.getQuantity() * cartItem.getProduct().getPrice();
			totalPrice += price - (price * cartItem.getProduct().getDiscount() / 100);

			double unitPrice = cartItem.getProduct().getPrice();

			orderDetail.setTotalPrice(price - (price * cartItem.getProduct().getDiscount() / 100));
			orderDetail.setPrice(unitPrice);
			orderDetail.setStatus("Đang Chờ Xử Lý");
			orderDetailRepository.save(orderDetail);

		}

		order.setTotalPrice(totalPrice);

		Date date = new Date();
		order.setOrderDate(date);
		order.setAmount(shoppingCartService.getAmount());
		order.setCustomer(c);

		orderRepository.save(order);
		order.getOrderId();

		sendMailService.sendMail(c.getEmail(), "Vegana Store",
				"<h3>Hi: " + order.getReceiver() + " !</h3> Bạn có một đơn đặt hàng từ Vegana Store!\r\n <br>"
						+ "<br>"
						+ "Ngày đặt hàng : " + "<h4 style=\"color: black;\">"+ order.getOrderDate() + "</h4>"
						+ "<br>"
						+ "Tổng số tiền là: "
						+ "<h4 style=\"color: red;\">$" + order.getTotalPrice() + "</h4>"
						+ "<br>"
						+ "Cảm ơn bạn đã mua sắm trong cửa hàng của chúng tôi!\r\n ");

		InvoiceDTO invoiceDTO = new InvoiceDTO();
		invoiceDTO.setReceiver(order.getReceiver());
		invoiceDTO.setOrderDate(order.getOrderDate());
		invoiceDTO.setTotalPrice(order.getTotalPrice());
		invoiceDTO.setPaypal(order.getPaypal());

		model.addAttribute("invoiceDTO", invoiceDTO);

		shoppingCartService.clear();
		wishListService.clear();
		session.removeAttribute("cartItems");
		model.addAttribute("orderId", order.getOrderId());
		model.addAttribute("totalCartItemWishs", wishListService.getCount());
		model.addAttribute("totalCartItems", shoppingCartService.getCount());

		if (order.getPaypal() == 1){
			return payment(order.getTotalPrice());
		}else {
			return "site/checkout_success";
		}
	}

	private String payment(Double totalPrice) {
		try {
			Payment payment = service.createPayment(totalPrice, "USD", "paypal",
					"sale", "testing payment", "http://localhost:8080/" + CANCEL_URL,
					"http://localhost:8080/" + SUCCESS_URL);
			for (Links link : payment.getLinks()) {
				if (link.getRel().equals("approval_url")) {
					return "redirect:" + link.getHref();
				}
			}

		} catch (PayPalRESTException e) {

			e.printStackTrace();
		}
		return "redirect:/carts";
	}

	@GetMapping(value = CANCEL_URL)
	public String cancelPay() {
		return "pay/cancel";
	}

	@GetMapping(value = SUCCESS_URL)
	public String successPay(Model model, @RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId) {
		try {
			Payment payment = service.executePayment(paymentId, payerId);
			System.out.println(payment.toJSON());
			if (payment.getState().equals("approved")) {
				model.addAttribute("successMessage", "You have paid successfully, Thank you");
				return "redirect:/checkoutPaypalSuccess";
			}
		} catch (PayPalRESTException e) {
			System.out.println(e.getMessage());
		}
		return "redirect:/carts";
	}

	@GetMapping("/checkoutPaypalSuccess")
	public String showPaypalSuccess(){
		return "site/checkoutPapalSuccess";
	}


	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		sdf.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}

}
