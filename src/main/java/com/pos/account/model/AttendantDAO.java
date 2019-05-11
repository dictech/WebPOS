package com.pos.account.model;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.pos.database.Database;


public class AttendantDAO {



			public static Attendant createNewAttendant(Attendant attendant) throws Exception {
 
            	     
            	      String sql = " INSERT into posv2.attendant(attdt_id, attdt_first_name, attdt_mid_name, attdt_surname, attdt_gender, attdt_dob, attdt_address, attdt_phone_no, attdt_email, attdt_dt_emp, attdt_position) "
            	      		     + " values(?,?,?,?,?,?,?,?,?,?,?)";
            	           
            	           Connection connection = Database.getDatabaseConnection();
            	           PreparedStatement ps = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            	           ps.setBigDecimal(1, attendant.getId());
            	           ps.setString(2, attendant.getfName());
            	           ps.setString(3, attendant.getmName());
            	           ps.setString(4, attendant.getSurname());
            	           ps.setString(5, attendant.getGender());
            	           ps.setDate(6, attendant.getDob());
            	           ps.setString(7, attendant.getAddress());
            	           ps.setString(8, attendant.getPhoneNo());
            	           ps.setString(9, attendant.getEmail());
            	           ps.setDate(10, attendant.getDoe());
            	           ps.setString(11, attendant.getPosition());
            	           ps.execute();
            	           ResultSet rs =  ps.getGeneratedKeys();
            	        	   
            	        	   if(rs.next()) {
            	        		   attendant.setId(rs.getBigDecimal(1));
            	        		   System.out.println(attendant.getId());
            	        		    
            	        	   }else {System.out.println("can not find : attendant id "+attendant.getId());}
            	           
            	           return attendant;
                    }
	       // the above logic creates an attendant and sends data to database.
	
			
			
			
        }
