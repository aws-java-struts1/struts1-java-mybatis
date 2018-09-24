package com.webapp.todo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.webapp.todo.form.TodoForm;
import com.webapp.todo.service.TodoService;


public class TodoViewAction extends Action {
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
			HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		
		TodoForm todoForm = (TodoForm) form;
		TodoService todoService = new TodoService();
		
		todoForm.setTodos(todoService.retrieveTodos());
		
		return mapping.findForward("success");
	}
}
