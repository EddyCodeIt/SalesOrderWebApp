package com.sales.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
