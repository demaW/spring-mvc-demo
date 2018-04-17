package com.dem.springdemo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	@RequestMapping("/processFromVersionTwo")
	public String letsShout(HttpServletRequest request, Model model) {
		String name = request.getParameter("userName");
		name = name.toUpperCase();
		String result = "Yo! " + name;
		model.addAttribute("message", result);
		
		return "helloworld";
	}
	
	@RequestMapping("/processFromVersionThree")
	public String processFromVersionThree(@RequestParam("userName") String userName, Model model) {
		userName = userName.toUpperCase();
		String result = "Sup, " + userName;
		model.addAttribute("message", result);
		
		return "helloworld";
	}
}
