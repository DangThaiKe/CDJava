package com.example.CDWeb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.CDWeb.model.Category;
import com.example.CDWeb.model.Product;
import com.example.CDWeb.repository.CategoryRepository;
import com.example.CDWeb.repository.ProductRepository;

@Controller
public class ProductController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@GetMapping("/category/{cateID}")
	public String findByCategoryId(@PathVariable Integer cateID, Model model) {
		List<Product> products = productRepository.findByCategoryCateID(cateID);
		model.addAttribute("products", products);
		
		List<Category> categorys = categoryRepository.findAll();
		model.addAttribute("categorys", categorys);
		
		return "category";
	}
}
