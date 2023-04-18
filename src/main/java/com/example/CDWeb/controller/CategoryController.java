package com.example.CDWeb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {

	@GetMapping("/category")
	public String showCatePage() {
		return "category";
	}
	
}
