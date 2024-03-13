package com.app.services;

import com.app.entities.Admin;

public interface AdminService {
	Admin validate(String email,String pwd);
	void updateAdmin(Admin admin);
	long countAdmin();
}
