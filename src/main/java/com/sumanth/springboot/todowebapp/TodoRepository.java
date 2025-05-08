package com.sumanth.springboot.todowebapp;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sumanth.springboot.todowebapp.todo.Todo;

public interface TodoRepository extends JpaRepository<Todo, Integer>{
	public List<Todo> findByUsername(String username);
}
