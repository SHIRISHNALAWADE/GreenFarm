package com.app.services;

import java.util.List;

import com.app.entities.Seller;

public interface SellerService {
	void registerSeller(Seller seller);
	List<Seller> allSellers();
	Seller findById(int id);
	Seller validate(String email,String pwd);
	void deleteSeller(int id);
	
}
