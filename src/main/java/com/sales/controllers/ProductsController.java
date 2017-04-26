package com.sales.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sales.models.Product;
import com.sales.services.ProductsService;

@RequestMapping("/secure/products/")
@Controller
public class ProductsController {

	@Autowired ProductsService prodService;
	
	@GetMapping(value = "/all-products")
	public String getAllProducts(Model model){
		
		model.addAttribute("AllProducts", prodService.getProducts());
		return "allProducts";
	}
	
	// add product
	@GetMapping(value = "/add-product")
	public String addProduct(Model model){
		
		Product newPrd = new Product();
		model.addAttribute("Product", newPrd);
		return "addProduct";
	}
	
	@PostMapping(value = "/add-product")
	public String submitNewProduct(@ModelAttribute ("Product") Product product ){
		
		prodService.addProduct(product);
		return "redirect:all-products";
	}
	
}
