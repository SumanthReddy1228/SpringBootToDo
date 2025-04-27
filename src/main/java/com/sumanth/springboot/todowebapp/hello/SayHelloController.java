package com.sumanth.springboot.todowebapp.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SayHelloController {

	@RequestMapping("say-hello")
	@ResponseBody
	public String sayHello() {
		return "Hello";
	}
	
	@RequestMapping("say-hello-html")
	@ResponseBody
	public String sayHelloHtml() {
		StringBuffer buffer=new StringBuffer();
		buffer.append("<html>");
		buffer.append("<head>");
		buffer.append("<title>My first Html page</title>");
		buffer.append("</head>");
		buffer.append("<h1>My first Html page</h1>");
		buffer.append("</html>");
		return buffer.toString();
	}
	

	@RequestMapping("say-hello-jsp")
//	@ResponseBody
	public String sayHelloJSP() {
		 return "sayHello";
	}
}
