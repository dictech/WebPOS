package com.pos.account.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;

import com.pos.database.Database;

public class AttendanceDAO {
	
	private static PreparedStatement ps;
	private static ResultSet rs;
	private final static Attendance attendance  = new Attendance();
	private final static Date date = Date.valueOf(LocalDate.now());
	private static final Time time = Time.valueOf(LocalTime.now());
	

	public static void CreateAttendance(Attendant attendant) throws Exception{
	   String query = " INSERT INTO posv2.attendance "
	   		          + " value(?,?,?,?,?,?,?) ";
	   
	          ps = Database.getConnectedPreparedStatement(query);
			  ps.setBigDecimal(1, attendance.getAttenc_ID());
			  ps.setBigDecimal(2, attendant.getId());
			  ps.setString(3, attendant.getfName());
			  ps.setString(4, attendant.getSurname());
			  ps.setTime(5, AttendanceDAO.time);
			  ps.setTime(6, attendance.getSignOutTime());
			  ps.setDate(7, AttendanceDAO.date);
			  ps.execute();
			  ps.close();
			  
			  
		      
	}


	public static Attendance getAttendance(Date date, Attendant attendant) throws Exception{
		   
		   String query = " SELECT * FROM posv2.attendance "
		   		        + " where attdnc_date = ? "
		   		        + " and attdnc_attdnt_id = ? ";
                  	
		           ps = Database.getConnectedPreparedStatement(query);
		           ps.setDate(1, date);
		           ps.setBigDecimal(2, attendant.getId());
		           ps.execute();
		           rs = ps.executeQuery();
		         
		           if(rs.next())
		           {
                       System.out.println("Attendance already exist! and will not be created again");
                       
  
		           }
		           else
		           {
		        	   AttendanceDAO.attendance.setAttenc_ID(AttendanceDAO.attendance.getAttenc_ID());
                       AttendanceDAO.attendance.setAttenc_attendt_Id(attendant.getId());
                       AttendanceDAO.attendance.setAttendcFirstName(attendant.getfName());
                       AttendanceDAO.attendance.setAttendcLastName(attendant.getSurname());
                       AttendanceDAO.attendance.setDate(AttendanceDAO.date);
                       AttendanceDAO.attendance.setSignInTime(AttendanceDAO.time);
                       AttendanceDAO.attendance.setSignOutTime(AttendanceDAO.attendance.getSignOutTime());
                       AttendanceDAO.CreateAttendance(attendant);
                       System.out.println("your attendance for today is not present");
                       System.out.println("Your attendance will be created now, \n please wait...");
                       System.out.println("your attendance for today has been created ! thank you");
		           }
		           
		           ps.close();
		           rs.close();           
		           return AttendanceDAO.attendance;
	            }
	
		   
	
	
	
	}

	    

