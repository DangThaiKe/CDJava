package com.example.CDWeb.controller;

import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/user-profile")
	public String showCartPage() {
		return "user";
	}
}