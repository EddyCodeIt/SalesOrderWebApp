package com.sales.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/secure/orders/")
@Controller
public class OrdersController {

	@GetMapping(value = "/all-orders")
	public String getAllCustomers(Model model){
		// model.addAttribute("AllOrders", salesService.getOrders());
		return "allOrders";
	}
	
}
