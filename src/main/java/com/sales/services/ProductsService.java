package com.sales.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Product;
import com.sales.repositories.ProductsRepo;

@Service
public class ProductsService {

	// autowire repo
	@Autowired ProductsRepo repo;
	
	
	// Get Products method
	public ArrayList<Product> getProducts(){
		return  (ArrayList<Product>) repo.findAll();
	}
	
	
	// Add products method
	
	public void addProduct(Product product){
		try {
			repo.save(product);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
}
