package com.sales.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/secure/customers/")
@Controller
public class CustomersController {

	@GetMapping(value = "/all-customers")
	public String getAllCustomers(Model model){
		// model.addAttribute("AllCustomers", salesService.getCustomers());
		return "allCustomers";
	}
}
