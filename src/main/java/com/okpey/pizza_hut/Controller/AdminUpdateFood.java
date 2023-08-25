package com.okpey.pizza_hut.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opkey.pizza_hut.Dto.EatableFood;
import com.opkey.pizza_hut.Service.EatableFoodService;

@WebServlet(value = "/updateFood")
public class AdminUpdateFood extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int  id=Integer.parseInt(req.getParameter("id"));
		String foodName=req.getParameter("pizza_name");
		String foodType=req.getParameter("Categories");
		double price=Double.parseDouble(req.getParameter("pizza_price"));
		String offer=req.getParameter("pizza_offer");
		String about=req.getParameter("Pizza_desc");
				
				 EatableFood food=new EatableFood();
				 food.setId(id);
				 food.setFoodName(foodName);
				 food.setFoodType(foodType);
				 food.setPrice(price);
				 food.setOffer(offer);
				 food.setAbout(about);
				 
				   
					
					EatableFoodService service=new EatableFoodService();
					PrintWriter printWriter=resp.getWriter();
					printWriter.write("<html><boby>");
					service.updateFood(food);
					printWriter.write("<h style='color:green'>Your food  is successfully updated</h>");
					RequestDispatcher dispatcher=req.getRequestDispatcher("admin-food-details.jsp");
					dispatcher.include(req, resp);
					printWriter.write("</html></boby>");
					
				
	}


}
