package com.example.CDWeb.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.CDWeb.model.Orders;
import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.OrdersRepository;
import com.example.CDWeb.repository.UserRepository;

@RestController
public class UserRestController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private OrdersRepository ordersRepository;
	
	@GetMapping("/check-email")
    public boolean checkEmailExist(@RequestParam String email) {
		User user = userRepository.findByEmail(email);
        if (user != null) {
        	return true;
        } 
		return false;
    }
}
