package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Order;
import com.sales.repositories.OrdersRepo;

@Service
public class OrdersService {

	// autowire repo
	@Autowired OrdersRepo repo;
	
	 
	// Get Orders method
	public ArrayList<Order> getOrders(){
		return  (ArrayList<Order>) repo.findAll();
	}
	
	// Add orders method
}
