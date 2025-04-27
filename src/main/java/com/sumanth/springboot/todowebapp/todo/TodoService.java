package com.sumanth.springboot.todowebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class TodoService {

	
	private static List<Todo> todos=new ArrayList<>();

	static {
		todos.add(new Todo(2, "codePractice", "Master Java Streams", LocalDate.now().plusMonths(6), false));
		todos.add(new Todo(3, "dataScience", "Explore Machine Learning", LocalDate.now().plusYears(2), false));
		todos.add(new Todo(4, "webDev", "Build a React Project", LocalDate.now().plusMonths(3), false));
		todos.add(new Todo(5, "cloudSkills", "Obtain Azure Certification", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(6, "AIResearch", "Read about Neural Networks", LocalDate.now().plusWeeks(4), false));
	}
	
	 
	public List<Todo> findByUserName(String username){
		return todos;//need to implement filter
	}
	
}
