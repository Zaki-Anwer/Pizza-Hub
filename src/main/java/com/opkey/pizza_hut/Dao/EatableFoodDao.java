package com.opkey.pizza_hut.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.opkey.pizza_hut.Dto.EatableFood;

public class EatableFoodDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("zaki");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	// food save method 
	
	public void saveFood(EatableFood eatableFood) {
		entityTransaction.begin();
		entityManager.persist(eatableFood);
		entityTransaction.commit();
	}
	
	//display
	
     public List<EatableFood> displayFood(){
			String dispay="Select e From EatableFood e";
			  Query query=entityManager.createQuery(dispay);
			  List<EatableFood> eatableFoods=query.getResultList();
			  return eatableFoods;
	}
     
     // delete method
     
       public int deletefood(int id) {
    	EatableFood eatableFood=entityManager.find(EatableFood.class,id);
  			while (eatableFood!=null) {
  				   entityTransaction.begin();
  				   entityManager.remove(eatableFood);
  				   entityTransaction.commit();
  				   System.out.println("Data deleted....");
  				return id;
  			}
			return 0;
  		}
       
    // update method
       public EatableFood updateFood(EatableFood eatableFood) {
           entityTransaction.begin();
           
           EatableFood eatableFood2 = entityManager.find(EatableFood.class, eatableFood.getId());
           
           if (eatableFood2 != null) {
               eatableFood2.setFoodName(eatableFood.getFoodName());
               eatableFood2.setFoodType(eatableFood.getFoodType());
               eatableFood2.setPrice(eatableFood.getPrice());
               eatableFood2.setAbout(eatableFood.getAbout());
               eatableFood2.setOffer(eatableFood.getOffer());
               
               entityManager.merge(eatableFood2);
               entityTransaction.commit();
               
               System.out.println("Data updated....");
               
               return eatableFood2;
           } else {
               entityTransaction.commit(); // Commit the transaction even if no update occurs
               System.out.println("Data not found for update.");
               return null;
           }
       }

	
   	
    // get byId method
     public EatableFood getFoodById(int id) {
        return entityManager.find(EatableFood.class, id);
    }
	

}
