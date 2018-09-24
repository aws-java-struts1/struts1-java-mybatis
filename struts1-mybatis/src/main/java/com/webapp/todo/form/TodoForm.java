package com.webapp.todo.form;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts.action.ActionForm;

public class TodoForm extends ActionForm {
	
	private static final long serialVersionUID = 1L;
	
	private String name;
	private String category;
	private List<Todo> todos = new ArrayList<>();
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public List<Todo> getTodos() {
		return new ArrayList<>(this.todos);
	}

	public void setTodos(List<Todo> todos) {
		this.todos = todos;
	}

}
