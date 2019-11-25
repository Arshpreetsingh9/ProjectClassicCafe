package com.user.wongi5.springdemo.demo.controller;

import java.time.LocalDateTime;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.wongi5.springdemo.demo.model.HelloWorld;

@Controller
public class HelloWorldController {
	@RequestMapping("/inserttoDB")
	public String handler(Model model) {
		HelloWorld helloWorld = new HelloWorld();
		helloWorld.setMessage("Hello World Example Using Spring MVC 5!!!");
		helloWorld.setDateTime(LocalDateTime.now().toString());
		model.addAttribute("ref", helloWorld);
		return "helloworld";
	}
	
	@RequestMapping("/dummy")
	public String dummy(Model model) {
		HelloWorld helloWorld = new HelloWorld();
		helloWorld.setMessage("Hello Dummy!!!");
		helloWorld.setDateTime(LocalDateTime.now().toString());
		model.addAttribute("ref", helloWorld);
		return "helloworld";
	}
}
