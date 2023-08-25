package com.opkey.pizza_hut.Service;

import com.opkey.pizza_hut.Dao.AdminLoginDao;
import com.opkey.pizza_hut.Dto.Admin;

public class AdminLoginService {
	AdminLoginDao dao=new AdminLoginDao();
	
	 //login
    public Admin login(String email, String password) {
    	return dao.login(email, password);
    }
    
    // Method to retrieve UserRegistration by email
    public Admin getByEmail(String email) {
    	return dao.getByEmail(email);
    }

}
