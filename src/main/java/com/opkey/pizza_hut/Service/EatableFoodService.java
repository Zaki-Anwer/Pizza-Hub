package com.opkey.pizza_hut.Service;

import java.util.List;

import com.opkey.pizza_hut.Dao.EatableFoodDao;
import com.opkey.pizza_hut.Dto.EatableFood;

public class EatableFoodService {
	EatableFoodDao dao=new EatableFoodDao();
	
	public void saveFood(EatableFood eatableFood) {
		dao.saveFood(eatableFood);
	}
	
	 public List<EatableFood> displayFood(){
		 return dao.displayFood();
	 }
	 
	// delete method
     
     public int deletefood(int foodId) {
    	 return dao.deletefood(foodId);
     }
     
     // update method
     public EatableFood updateFood(EatableFood eatableFood) {
    		return dao.updateFood(eatableFood);
    	}

}
