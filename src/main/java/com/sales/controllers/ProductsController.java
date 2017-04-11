package com.sales.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/secure/products/")
@Controller
public class ProductsController {

	@GetMapping(value = "/all-products")
	public String getAllProducts(Model model){
		
		// model.addAttribute("AllProducts", salesService.getProducts());
		return "allProducts";
	}
}
