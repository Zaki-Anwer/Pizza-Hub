package com.okpey.pizza_hut.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.opkey.pizza_hut.Dto.Admin;
import com.opkey.pizza_hut.Service.AdminLoginService;
@WebServlet(value = "/adminlogin")
public class AdminLoginControler extends HttpServlet {
	
	 @Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			 HttpSession httpSession = req.getSession();
				
				String userEmail = req.getParameter("userEmail");
				String userPass = req.getParameter("userPassword");
				
				AdminLoginService service = new AdminLoginService();
				
				
				// find userdata for login
				Admin admin = service.getByEmail(userEmail);
				
				
				if(admin!=null) {
					String dbPassword = admin.getPassword();
					if (BCrypt.checkpw(userPass, dbPassword)) {
						httpSession.setAttribute("userEmail",admin.getEmail());
						RequestDispatcher dispatcher = req.getRequestDispatcher("admin-home.jsp");
						dispatcher.forward(req, resp);
					}else {
						req.setAttribute("userPassword","invalid-password");
						RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
						dispatcher.forward(req, resp);
					}
				}else {
					req.setAttribute("userEmail","invalid-email");
					RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
					dispatcher.forward(req, resp);
				}
				
				
		}

	}



