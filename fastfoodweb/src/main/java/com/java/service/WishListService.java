package com.java.service;

import com.java.entity.CartItemWish;
import com.java.entity.Product;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public interface WishListService {
	
	int getCount();

	void clear();
	
	Collection<CartItemWish> getCartItemWishs();

	void remove(CartItemWish item);

	void add(CartItemWish item);

	void remove(Product product);

}
