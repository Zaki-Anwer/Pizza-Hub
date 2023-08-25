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

@WebServlet(value = "/food")
public class EatableFoodController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String foodName=req.getParameter("pizza_name");
		String foodType=req.getParameter("Categories");
		double price=Double.parseDouble(req.getParameter("pizza_price"));
		String offer=req.getParameter("pizza_offer");
		String about=req.getParameter("Pizza_desc");
				
				 EatableFood food=new EatableFood();
				  
				 food.setFoodName(foodName);
				 food.setFoodType(foodType);
				 food.setPrice(price);
				 food.setOffer(offer);
				 food.setAbout(about);
				 
				   
					
					EatableFoodService service=new EatableFoodService();
					PrintWriter printWriter=resp.getWriter();
					printWriter.write("<html><boby>");
					service.saveFood(food);
					printWriter.write("<h style='color:green'>Your food  is successfully added</h>");
					RequestDispatcher dispatcher=req.getRequestDispatcher("add-food.jsp");
					dispatcher.include(req, resp);
					printWriter.write("</html></boby>");
					
				
	}

}
