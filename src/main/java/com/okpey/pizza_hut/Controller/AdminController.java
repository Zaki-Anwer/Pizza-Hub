package com.okpey.pizza_hut.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.opkey.pizza_hut.Dao.AdminLoginDao;
import com.opkey.pizza_hut.Dto.Admin;
@WebServlet(value ="/admin")
public class AdminController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		
		       // Generate a salt
				String salt = BCrypt.gensalt(12); // 12 is the work factor

				// Hash the password
				String hashedPassword = BCrypt.hashpw(password, salt);
		
		Admin admin=new Admin();
		AdminLoginDao dao=new AdminLoginDao();
		admin.setName(name);
		admin.setEmail(email);
		admin.setPassword(hashedPassword);
		dao.save(admin);
		
	}

}
