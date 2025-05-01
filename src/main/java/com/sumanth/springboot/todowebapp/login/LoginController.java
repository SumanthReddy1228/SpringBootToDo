package com.sumanth.springboot.todowebapp.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	@Autowired
	private AuthenticationService authenticationService;

	@GetMapping("/login")
	public String gottoLogin() {
		return "login";
	}
	
	@PostMapping("/login")
	public String gotoWelcomePage(@RequestParam String name,@RequestParam String password, ModelMap model) {
		if(authenticationService.authenticate(name, password)){
			model.put("name", name);
			model.put("password", password);
			 
			
			return "welcome";
		} 
		model.put("errromessage", "Invalid Credentials! Please try again.");
		return "login";
	}
}
 