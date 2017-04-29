package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Customer;
import com.sales.repositories.CustomersRepo;

@Service
public class CustomersService {

	// autowire repo
	@Autowired CustomersRepo repo;
	
	
	// Get customers method 
	public ArrayList<Customer> getCustomers(){
		return  (ArrayList<Customer>) repo.findAll();
	}
	
	// Add customer method
	
	 public void addCustomer(Customer cust){
		 
		try {
			 repo.saveAndFlush(cust);
		} catch (Exception e) {
			// TODO: handle exception
		}
	 }
	
}
