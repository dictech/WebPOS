package com.pos.database;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;


//
//import javafx.collections.FXCollections;
//import javafx.fxml.FXML;
//import javafx.scene.control.TableView;

public class Database {

	static String dbUrl = "jdbc:mysql://localhost:3306/POSv2";
	static String dbUsername = "root";
	static String dbPassword = "esthermylove";

	static Connection conn = null;
	static PreparedStatement stmt;
	
	public static Connection getDatabaseConnection() {
				
		try {
			conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return conn;
	}
	
	public static PreparedStatement getConnectedPreparedStatement(String sql) {
		
		try {
		    conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);
			stmt = conn.prepareStatement(sql);

		}catch(Exception e) {
			System.out.println(e);
		}
		
		return stmt;
	}
	
	public static void deleteFromTable(String sql, BigDecimal id) {
		
		try {
			conn =  Database.getDatabaseConnection();
		    PreparedStatement stmt = conn.prepareStatement(sql);
		    
		    stmt.setBigDecimal(1,id);
		    stmt.execute();
		    stmt.close();
		    conn.close();
		    
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeDatabaseConnection() {
		try {
			stmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
//
//	public static void refreshTable(TableView table, List<?> data) {
//		table.setItems(FXCollections.observableArrayList(data));
//		table.refresh();
//	}
}
