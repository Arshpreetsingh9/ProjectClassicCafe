package com.user.wongi5.springdemo.demo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.swing.Spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.wongi5.springdemo.demo.model.SimpleServerletGetter;

@Controller
public class signupcontroller {
	/**
	 * Create new SimpleServletGetter object for empty from
	 *
	 * @return
	 */
	@ModelAttribute("SimpleServletGetter")
	public SimpleServerletGetter setSimpleServletGetter() {
		
		return new SimpleServerletGetter();
	}

	/**
	 * Method to show the initial HTML form
	 *
	 * @return
	 */
	@GetMapping("/home")
	public String showForm() {
	return "home";
	}
	
	
	@RequestMapping("/menu")
	public String menu() {
	System.out.println("this is it");
	   return "menu";
	}
	
	@RequestMapping("/contact")
	public String contact() {
	System.out.println("contact");
	   return "contact";
	}
	
	/**
	 * Save User sign up form
	 *
	 * @param SimpleServletGetter
	 * @param model
	 * @return
	 * @throws IOException 
	 * @throws ServletException 
	 */
	@PostMapping("/saveSimpleServletGetter")
	public String saveUser(@ModelAttribute("SimpleServletGetter") SimpleServerletGetter SimpleServletGetter, Model model) throws ServletException, IOException {
// Implement business logic to save user details into a database
// ...

		
		System.out.println("Email : " + SimpleServletGetter.getemail());
		System.out.println("Password : " + SimpleServletGetter.getpassword());
		model.addAttribute("message", "User SignUp successfully.");
		model.addAttribute("user", SimpleServletGetter);
		SimpleServlet ss=new SimpleServlet();
		ss.doThis(SimpleServletGetter.getemail(), SimpleServletGetter.getpassword(), SimpleServletGetter.getconfirmPassword());
		return "home";
	}
	
	@PostMapping("/loginSimpleServletGetter")
	public String loginUser(@ModelAttribute("SimpleServletGetter") SimpleServerletGetter SimpleServletGetter, Model model) 
			throws ServletException, IOException {
// Implement business logic to save user details into a database
// ...
		System.out.println("Email : " + SimpleServletGetter.getemail());
		System.out.println("Password : " + SimpleServletGetter.getpassword());
		
		SimpleServlet ss=new SimpleServlet();
		ss.login(SimpleServletGetter.getemail(), SimpleServletGetter.getpassword());
		model.addAttribute("message", "User SignIn successfully.");
		model.addAttribute("rewards", SimpleServlet.ssg.getRewards());
		model.addAttribute("purchases", SimpleServlet.ssg.getPurchases());
		
		return "home";
	}


@PostMapping("/purchaseSimpleServletGetter")
public String purchase(@ModelAttribute("SimpleServletGetter") SimpleServerletGetter SimpleServletGetter, Model model) 
		throws ServletException, IOException {
//Implement business logic to increases purchase and rewards in database
//...
	
	model.addAttribute("message", "User SignIn successfully.");
	System.out.println("Email : " + SimpleServlet.ssg.getemail());
	System.out.println("Password : " + SimpleServletGetter.getpassword());
	SimpleServlet ss=new SimpleServlet();
	ss.purchase(SimpleServlet.ssg.getemail(),SimpleServlet.ssg.getpassword());
	model.addAttribute("user", SimpleServletGetter);
	model.addAttribute("rewards", SimpleServlet.ssg.getRewards());
	model.addAttribute("purchases", SimpleServlet.ssg.getPurchases());
	
	return "home";
}
}