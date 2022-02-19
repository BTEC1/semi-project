package com.java.repository;

import com.java.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
	
	@Query(value = "select * from orders where customerId = ?1", nativeQuery = true)
    List<Order> findByCustomerId(String id);

}
