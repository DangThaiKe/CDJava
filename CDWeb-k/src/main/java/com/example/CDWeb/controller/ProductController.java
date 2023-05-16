package com.example.CDWeb.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String findByCategoryId(@PathVariable("cateID") Integer cateID, Model model) {
		List<Category> categorys = categoryRepository.findAll();
		model.addAttribute("categorys", categorys);
		
		model.addAttribute("cateID", cateID);
		
		Category category = categoryRepository.getCategoryBycateID(cateID);
		model.addAttribute("category", category);
		
		List<Product> products = productRepository.findByCategoryCateID(cateID);
		model.addAttribute("products", products);
		
		return "category";
	}
	
	@ResponseBody
	@GetMapping("/list/category/{cateID}")
	public List<Product>  getProducts(@PathVariable("cateID") Integer cateID,
			@RequestParam(required = false) String sortOption) {
		
		List<Product> products = new ArrayList<>();
		
		if(sortOption != null) {
			switch (sortOption) {
				case "priceAsc":
					products = productRepository.findByCategoryCateIDOrderByPriceAsc(cateID);
					break;
				case "priceDesc":
					products = productRepository.findByCategoryCateIDOrderByPriceDesc(cateID);
					break;
				case "nameAsc":
					products = productRepository.findByCategoryCateIDOrderByProductNameAsc(cateID);
					break;
				case "nameDesc":
					products = productRepository.findByCategoryCateIDOrderByProductNameDesc(cateID);
					break;
				default:
					products = productRepository.findByCategoryCateID(cateID);
				}
		}
		return products;
	}
}


















