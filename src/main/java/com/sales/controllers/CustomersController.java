package com.sales.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sales.models.Customer;
import com.sales.models.Product;
import com.sales.services.CustomersService;

@RequestMapping("/secure/customers/")
@Controller
public class CustomersController {

	@Autowired CustomersService custService;  
	
	@GetMapping(value = "/all-customers")
	public String getAllCustomers(Model model){
							// items in jsp 
		 model.addAttribute("AllCustomers", custService.getCustomers());
		return "allCustomers";
	}
	
	// add product
	@GetMapping(value = "/add-customer")
	public String addProduct(Model model){
		
		Customer newCust = new Customer();
		model.addAttribute("Customer", newCust);
		return "addCustomer";
	}
	
	@PostMapping(value = "/add-customer")
	public String submitNewCustomer(@Valid @ModelAttribute ("Customer") Customer customer, BindingResult result ){
		
		if (result.hasErrors()) {
			return "addCustomer";
			
		} else {
			custService.addCustomer(customer);
			return "redirect:all-customers";
		}
		
	}
}
