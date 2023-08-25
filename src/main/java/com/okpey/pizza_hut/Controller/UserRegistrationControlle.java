package com.okpey.pizza_hut.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import com.opkey.pizza_hut.Dto.UserRegistration;
import com.opkey.pizza_hut.Service.UserRegistrationService;

@WebServlet(value = "/userReg")
public class UserRegistrationControlle extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		String cpassword = req.getParameter("password");

		// Generate a salt
		String salt = BCrypt.gensalt(12); // 12 is the work factor

		// Hash the password
		String hashedPassword = BCrypt.hashpw(cpassword, salt);

		// Store the username, hashed password, and salt in your database
		// ... (database code here)

		UserRegistration registration = new UserRegistration();

		registration.setName(fullname);
		registration.setEmail(email);
		registration.setContact(phone);
		registration.setPassword(hashedPassword);

		UserRegistrationService service = new UserRegistrationService();
		PrintWriter printWriter = resp.getWriter();
		printWriter.write("<html><boby>");
		service.UserSingnUp(registration);
		printWriter.write("<h style='color:green'>Your registration is successfully</h>");
		RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
		dispatcher.forward(req, resp);
		printWriter.write("</html></boby>");

	}

}
