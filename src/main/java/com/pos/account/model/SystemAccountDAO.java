package com.pos.account.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;


import com.pos.database.Database;

public class SystemAccountDAO {

	private static Connection cnt;
	private static PreparedStatement ps;
	private static ResultSet rs;
	private static boolean validationCheck;
	    
	  

	public static boolean isValidationCheck() {
		return validationCheck;
	}

	public static void setValidationCheck(boolean validationCheck) {
		SystemAccountDAO.validationCheck = validationCheck;
	}

	public static void createSystemAccount(SystemAccount systemAccount) throws Exception{

		     
		     String sql = " INSERT INTO posv2.account (acct_id, acct_attdt_id, acct_username, acct_password)"
		     		      + " value(?,?,?,?)";
		     
		        cnt = Database.getDatabaseConnection();
		        ps = cnt.prepareStatement(sql);
		        ps.setBigDecimal(1, systemAccount.getAccountID());
		        ps.setBigDecimal(2, systemAccount.getActAttendantID());
		        ps.setString(3, systemAccount.getUserName());
		        ps.setString(4, systemAccount.getPassword());
		        ps.execute();
		        ps.close();
		        cnt.close();
		        
	     }

	 public static SystemAccount loginSystemAccount(String userName, String password) throws Exception{
		     
		 SystemAccount systemAccount = new SystemAccount();
	         String sql = "SELECT acct_attdt_id from posv2.account "
	         		+ " WHERE acct_username = ?"
	         		+ " and acct_password = ?";
	         
	          ps = Database.getConnectedPreparedStatement(sql);
	          ps.setString(1, systemAccount.setUserName(userName));
	          ps.setString(2, systemAccount.setPassword(password));
	          rs = ps.executeQuery();
	          
	          
	               if(rs.next()) {
	        	    Attendant attendant = AttendantDAO.getAttendant(rs.getBigDecimal(1));
	        	    SystemAccountDAO.setValidationCheck(true);
	        	    System.out.println(attendant.getId());
	        	    
	        	     Attendance attendance = new Attendance();
	        	     attendance.setAttenc_ID(attendance.getAttenc_ID());
	        	     attendance.setAttenc_attendt_Id(attendant.getId());
	        	     attendance.setAttendcFirstName(attendant.getfName());
	        	     attendance.setAttendcLastName(attendant.getSurname());
	        	     attendance.setDate(Date.valueOf(LocalDate.now()));
	        	     attendance.setSignInTime(Time.valueOf(LocalTime.now()));
	        	     AttendanceDAO.CreateAttendance(Date.valueOf(LocalDate.now()));

	        	       
	          }else {
	        	   
	        	  SystemAccountDAO.setValidationCheck(false);
	          }
	         
		return systemAccount;
	}

	
	
}
