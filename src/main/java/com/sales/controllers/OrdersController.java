package com.sales.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sales.services.OrdersService;

@RequestMapping("/secure/orders/")
@Controller
public class OrdersController {

	@Autowired OrdersService ordersService;
	@GetMapping(value = "/all-orders")
	public String getAllCustomers(Model model){
		 model.addAttribute("AllOrders", ordersService.getOrders());
		return "allOrders";
	}
	
}
