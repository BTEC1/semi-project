package com.java.service;

import com.java.entity.CartItem;
import com.java.entity.Product;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public interface ShoppingCartService {

	int getCount();

	double getAmount();

	void clear();
	
	Collection<CartItem> getCartItems();

	void remove(CartItem item);

	void add(CartItem item);

	void remove(Product product);
	
}
