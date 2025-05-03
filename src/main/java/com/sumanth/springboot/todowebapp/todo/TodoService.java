package com.sumanth.springboot.todowebapp.todo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Service;

import jakarta.validation.Valid;

@Service
public class TodoService {

	private static int todoCount=0;
	
	private static List<Todo> todos=new ArrayList<>();

	static {
		todos.add(new Todo(++todoCount, "codePractice", "Master Java Streams", LocalDate.now().plusMonths(6), false));
		todos.add(new Todo(++todoCount, "dataScience", "Explore Machine Learning", LocalDate.now().plusYears(2), false));
		todos.add(new Todo(++todoCount, "webDev", "Build a React Project", LocalDate.now().plusMonths(3), false));
		todos.add(new Todo(++todoCount, "cloudSkills", "Obtain Azure Certification", LocalDate.now().plusYears(1), false));
		todos.add(new Todo(++todoCount, "AIResearch", "Read about Neural Networks", LocalDate.now().plusWeeks(4), false));
	}
	
	 
	public List<Todo> findByUserName(String username){
		return todos;//need to implement filter
	}
	
	public void addTodo(String username,String description,LocalDate targetDate,boolean isdone) {
		
		Todo  todo=new Todo(++todoCount,username,description,targetDate,isdone);
		todos.add(todo);
	}
	
	public void deleteById(int id) {
		todos.removeIf(todo->todo.getId()==id);
	}
	
	public Todo findById(int id) {
		Predicate<? super Todo> predicate=todo->todo.getId()==id;
		Todo todo =todos.stream().filter(predicate).findFirst().get();
		return todo;
	}
	
	public void update(@Valid Todo todo) {
		deleteById(todo.getId());
		todos.add(todo);
	}
	
}
