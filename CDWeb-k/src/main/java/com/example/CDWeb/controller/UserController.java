package com.example.CDWeb.controller;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.CDWeb.model.User;
import com.example.CDWeb.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/register")
	public String showRegisterPage() {
		return "register-page";
	}
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute User user) {
		userRepository.save(user);
		
		return "redirect:/login";
	}

	@GetMapping("/login")
	public String showLoginPage(Model model) {
		return "login-page";
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, 
			HttpSession session) {
		User user = userRepository.findByEmail(email);
		
		// xác thực user và lưu thông tin vào session
		if (user != null && user.getPassword().equals(password)) {
			session.setAttribute("user", user);
			return "redirect:/";
		} else {
			return "redirect:/login?error";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "redirect:/login";
	}
	
	@GetMapping("/user-profile")
	public String showUserPage(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		model.addAttribute("user", user);
		
		return "user";
	}
	
	// update profile
	@PostMapping("/update-profile")
	public String updateUser(@ModelAttribute User user, Model model, HttpSession session) {
		
		User currentUser = (User) session.getAttribute("user");
		
		currentUser.setLastName(user.getLastName());
		currentUser.setFirstName(user.getFirstName());
		currentUser.setEmail(user.getEmail());
		currentUser.setPhone(user.getPhone());
		currentUser.setAddress(user.getAddress());
		
		userRepository.save(currentUser);
		
		model.addAttribute("user", currentUser);
		
		return "user";
	}
	
	// change password
	@PostMapping("/user-profile")
	public String changePassword(@RequestParam("password") String password, HttpSession session) {
		User currentUser = (User) session.getAttribute("user");
		
		userRepository.changePasswordByEmail(password, currentUser.getEmail());
		
		return "user";
	}
	
}





