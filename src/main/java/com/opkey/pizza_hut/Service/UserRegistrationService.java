package com.opkey.pizza_hut.Service;

import com.opkey.pizza_hut.Dao.UserSignUpDao;
import com.opkey.pizza_hut.Dto.UserRegistration;

public class UserRegistrationService {
   UserSignUpDao dao=new UserSignUpDao();
	
   // Registration 
	
	public void UserSingnUp(UserRegistration registration) {
		dao.UserSingnUp(registration);
	}

	//login
	public UserRegistration login(String email, String password) {
				return dao.login(email, password);
			}
	
	//get by email
	 public UserRegistration getByEmail(String email) {
		 return dao.getByEmail(email);
	 }

}
