package com.pos.account.controller;

import java.io.IOException;
import java.io.Writer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pos.account.model.SystemAccountDAO;

/**
 * Servlet implementation class CreateLoginCtrl
 */
public class CreateLoginCtrl extends HttpServlet {
private static final long serialVersionUID = 1L;

	  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
      String userName = request.getParameter("loginUserName");
      String password = request.getParameter("loginPassword");

       try {
    	   SystemAccountDAO.loginSystemAccount(userName,password); 
    	   if(SystemAccountDAO.isValidationCheck()) {
      RequestDispatcher rd = request.getRequestDispatcher("/homePage.jsp");
      rd.forward(request, response);
    	   }else {
    		    Writer out = response.getWriter();
    		    out.append("wrong details !");
    	   }
       }catch(Exception e) {
    	   e.getMessage();
    	   System.out.println(e);
       }     
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
