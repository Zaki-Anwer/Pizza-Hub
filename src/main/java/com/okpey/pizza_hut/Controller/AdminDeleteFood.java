package com.okpey.pizza_hut.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opkey.pizza_hut.Service.EatableFoodService;

@WebServlet(value ="/deletefood")
public class AdminDeleteFood extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EatableFoodService eatableFoodService = new EatableFoodService();
		
        eatableFoodService.deletefood(Integer.parseInt(req.getParameter("id")));
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("admin-food-details.jsp");
		dispatcher.include(req, resp);
	}
}
