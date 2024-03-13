package com.app.services;

import java.util.List;

import com.app.entities.Customer;
import com.app.entities.Order;

public interface OrderService {

	Order saveOrder(Order order);
	List<Order> getAllOrders();
	List<Order> getCustomerOrders(Customer customer);
	Order findById(int id);
}
