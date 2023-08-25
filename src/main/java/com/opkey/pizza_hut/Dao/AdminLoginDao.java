package com.opkey.pizza_hut.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.opkey.pizza_hut.Dto.Admin;
import com.opkey.pizza_hut.Dto.UserRegistration;

public class AdminLoginDao {
	
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("zaki");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public void save(Admin admin) {
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
	}
	
    //login
    public Admin login(String email, String password) {
    Query query = entityManager.createQuery("SELECT u FROM Admin u WHERE u.email = :email AND u.password = :password");
    query.setParameter("email", email);
    query.setParameter("password", password);
    
    try {
        Admin admin = (Admin) query.getSingleResult();
        return admin;
    } catch (NoResultException e) {
        return null;
    }
   }
    

 // Method to retrieve Admin by email
    public Admin getByEmail(String email) {
        try {
            Query query = entityManager.createQuery("SELECT u FROM Admin u WHERE u.email = ?1");
            query.setParameter(1, email);
            Admin admin = (Admin) query.getSingleResult();
            return admin;
        } catch (NoResultException e) {
            return null;
        }
    }

}
