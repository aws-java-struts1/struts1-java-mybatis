package com.webapp.login.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import com.webapp.login.form.LoginForm;
import com.webapp.login.service.LoginService;

public class LoginAction extends Action {
	
	@Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
        LoginForm loginForm = (LoginForm) form;
        LoginService service = new LoginService();
        ActionErrors errors = new ActionErrors();
        
        HttpSession session = request.getSession(true);
        
        if (service.isUserValid(loginForm.getUserName(), loginForm.getPassword())) {
        	session.setAttribute("username", loginForm.getUserName());
        	
            return mapping.findForward("success");
        } else
        	errors.add("error", new ActionMessage("error.invalid.login.credentials"));
            return mapping.findForward("failure");
    }

}
