package com.pos.account.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.pos.database.Database;

public class SystemAccountDAO {

	private static Connection cnt;
	private static PreparedStatement ps;
	private static ResultSet rs;
	    
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

	
	
}
