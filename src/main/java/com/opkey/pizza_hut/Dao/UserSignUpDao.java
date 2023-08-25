package com.opkey.pizza_hut.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.opkey.pizza_hut.Dto.UserRegistration;


public class UserSignUpDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("zaki");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	// Registration 
	
	public void UserSingnUp(UserRegistration registration) {
		entityTransaction.begin();
		entityManager.persist(registration);
		entityTransaction.commit();
	}
	
	
	
	    //login
	public UserRegistration login(String email, String password) {
	    Query query = entityManager.createQuery("SELECT u FROM UserRegistration u WHERE u.email = :email AND u.password = :password");
	    query.setParameter("email", email);
	    query.setParameter("password", password);
	    
	    try {
	        UserRegistration registration = (UserRegistration) query.getSingleResult();
	        return registration;
	    } catch (NoResultException e) {
	        return null; // User not found
	    }
	}


	   // Method to retrieve UserRegistration by email
		public UserRegistration getByEmail(String email) {
        	System.out.println("getting user before email is "+email);
   		   Query query=entityManager.createQuery("SELECT u FROM UserRegistration u WHERE u.email =?1");
   		   System.out.println("getting user after email is "+email);
   			query.setParameter(1, email);
   		 try {
   	        UserRegistration user = (UserRegistration) query.getSingleResult();
   	        System.out.println("getting user before validation is " + user);
   	        return user;
   	    } catch (NoResultException e) {
   	        System.out.println("No user found for email: " + email);
   	        return null; // Return null when no result is found
   	    }

       }
}
		
	
	


