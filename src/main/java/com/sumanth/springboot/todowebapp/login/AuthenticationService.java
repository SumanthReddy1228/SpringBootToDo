package com.sumanth.springboot.todowebapp.login;

import org.springframework.stereotype.Component;

@Component
public class AuthenticationService {

	public boolean authenticate(String username,String password) {
		
		boolean isValidUsername=username.equalsIgnoreCase("sumanth");
		boolean isValidPassword=password.equalsIgnoreCase("test");
		
		return isValidUsername && isValidPassword;
	}
}
