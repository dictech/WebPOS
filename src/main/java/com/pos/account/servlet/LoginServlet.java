package com.pos.account.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pos.account.model.SystemAccountDAO;



public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private boolean isValid = SystemAccountDAO.isValidationCheck();  
 
	
    public LoginServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
  	  
	      String userName = request.getParameter("loginUserName");
	      String password = request.getParameter("loginPassword");
	      

	       try {
	    	   SystemAccountDAO.loginSystemAccount(userName,password); 
	    	   isValid = SystemAccountDAO.isValidationCheck();
	    	   
	    	   if(isValid) {
	      RequestDispatcher rd = request.getRequestDispatcher("/homePage.jsp");
	      rd.forward(request, response);
	      
	    	   }else {
	    		  System.out.println("error");
	    	   }
	       }catch(Exception e) {
	    	   e.getMessage();
	    	   System.out.println(e);
	       }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
