package com.app.services;

import java.util.List;

import com.app.entities.Customer;

public interface CustomerService {
	void registerCustomer(Customer cust);
	
	List<Customer> allCustomers();
	
	Customer findById(int id);
	
	Customer validate(String email,String pwd);
	
	boolean verifyUserId(String email);
	
	void updateProfile(Customer cust);
}
