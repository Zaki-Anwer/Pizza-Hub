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

import com.opkey.pizza_hut.Dto.UserRegistration;
import com.opkey.pizza_hut.Service.UserRegistrationService;

@WebServlet(value = "/userLogin")
public class UserLoginController extends HttpServlet {

	@SuppressWarnings("unused")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession httpSession = req.getSession();

		String userEmail = req.getParameter("userEmail");
		String userPass = req.getParameter("userPassword");

		UserRegistrationService service = new UserRegistrationService();

		// find userdata for login
		UserRegistration user = service.getByEmail(userEmail);

		

//			UserRegistration user = service.login(userEmail, userPass);

		// Retrieve the stored hashed password and salt from the database
		// ... (database code here)

		// Hash the entered password with the stored salt

		if (user != null) {
			String dbPassword = user.getPassword();
			if (BCrypt.checkpw(userPass, dbPassword)) {
				httpSession.setAttribute("userEmail", user.getEmail());
				RequestDispatcher dispatcher = req.getRequestDispatcher("user-home.jsp");
				dispatcher.forward(req, resp);
			} else {
				req.setAttribute("userPassword", "invalid-password");
				RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
				dispatcher.forward(req, resp);
			}
		} else {
			req.setAttribute("userEmail", "invalid-email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
			dispatcher.forward(req, resp);
		}

//			if(user!=null) {
//				if(user.getPassword().equals(userPass)) {
//					httpSession.setAttribute("userEmail",user.getEmail());
//					RequestDispatcher dispatcher = req.getRequestDispatcher("user-home.jsp");
//					dispatcher.forward(req, resp);
//				}else {
//					req.setAttribute("userPassword","invalid-password");
//					RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
//					dispatcher.forward(req, resp);
//				}
//			}else {
//				req.setAttribute("userEmail","invalid-email");
//				RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
//				dispatcher.forward(req, resp);
//			}

	}

}
