package com.pos.account.model;


import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.PreparedStatement;

import com.pos.database.Database;


public class AttendantDAO {

	private static String imageUri;
	
            public static String getImageUri() {
		return imageUri;
	}

	public static void setImageUri(String imageUri) {
		AttendantDAO.imageUri = imageUri;
	}

			public static Attendant createNewAttendant(Attendant attendant) throws Exception {
            	     File file = new File("C:\\Users\\uwem\\Documents\\myWebApp\\WebPOS\\src\\main\\webapp\\bk.jpg");
            	     FileInputStream fis = new FileInputStream(file);
            	     int size = (int)file.length();
            	     
            	      String sql = " INSERT into posv2.attendant(attdt_id, attdt_first_name, attdt_mid_name, attdt_surname, attdt_gender, attdt_dob, attdt_address, attdt_phone_no, attdt_email, attdt_dt_emp, attdt_position, attdt_image) "
            	      		     + " values(?,?,?,?,?,?,?,?,?,?,?,?)";
            	           
            	           PreparedStatement ps = Database.getConnectedPreparedStatement(sql);
            	           ps.setBigDecimal(1, attendant.getId());
            	           ps.setString(2, attendant.getfName());
            	           ps.setString(3, attendant.getmName());
            	           ps.setString(4, attendant.getSurname());
            	           ps.setString(5, attendant.getGender());
            	           ps.setString(6, attendant.getDob());
            	           ps.setString(7, attendant.getAddress());
            	           ps.setString(8, attendant.getPhoneNo());
            	           ps.setString(9, attendant.getEmail());
            	           ps.setDate(10, attendant.getDoe());
            	           ps.setString(11, attendant.getPosition());
            	           ps.setBinaryStream(12, (InputStream)fis,size);
            	           
            	           return attendant;
            }
	
	
}
