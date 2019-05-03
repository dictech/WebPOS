package com.pos.account.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.ImageView;

import com.pos.account.model.Attendant;


public class CreateAttendantCtrl extends HttpServlet {
private static final long serialVersionUID = 1L;
   
   private Attendant attendant;
   private String fName;
   private String mName;
   private String surname;
   private String gender;
   private String dob;
   private String address;
   private String phoneNo;
   private String email;
   private Date doe;
   private String pos;
   private String image;
   private String userName;
   private String password;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  
		  fName = request.getParameter("firstName");
		  mName = request.getParameter("middleName");
		  surname = request.getParameter("lastName");
		  gender = request.getParameter("gender");
		  dob = request.getParameter("dob");
		  address = request.getParameter("homeAddress");
		  phoneNo = request.getParameter("phoneNumber");
		  email = request.getParameter("email");
		  doe = Date.valueOf(request.getParameter("doe"));
		  pos = request.getParameter("position");
		  image = request.getParameter("image");
		  userName = request.getParameter("userName");
		  password = request.getParameter("password");
		  
		  
		  if(fName.isEmpty() || 
		     mName.isEmpty() || 
		     surname.isEmpty() ||
		     gender.isEmpty() ||
		     dob.isEmpty() || 
		     address.isEmpty() ||
		     phoneNo.isEmpty() ||
		     email.isEmpty() ||
		     dob.isEmpty() ||
		     pos.isEmpty() ||
		     image.isEmpty() ||
		     userName.isEmpty() ||
		     password.isEmpty()) {
			  
			 PrintWriter out = response.getWriter();
			 out.print("please fill the empty feilds!");
			 
		  }
		  
		   else {
			     
			      
			         this.attendant = new Attendant()
			    		  .setfName(fName)
			    		  .setmName(mName)
			    		  .setSurname(surname)
			    		  .setGender(gender)
			    		  .setDob(dob)
			    		  .setAddress(address)
			    		  .setDoe(doe)
			    		  .setEmail(email)
			    		  .setPosition(pos)
			    		  .setPhoneNo(phoneNo)
			    		  .BuildAttendant();
//			  
		  }
		  
		
	}

}
