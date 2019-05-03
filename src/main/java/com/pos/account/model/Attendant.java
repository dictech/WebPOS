package com.pos.account.model;

import java.awt.Image;
import java.math.BigDecimal;
import java.sql.Date;




public class Attendant {
	
	 private BigDecimal id;
	 private String fName;
	 private String mName;
	 private String surname;
	 private String gender;
	 private String   dob;
	 private String address; 
	 private String phoneNo; 
	 private String email; 
	 private  Date   doe; 
	 private Image image;
     private String position;
     private String cacheId = "USER";
		 
		

	 
	 
	 
	 public Attendant() {
		 
	 }
	 
	 public Attendant(BigDecimal id, String fName, String mName, String surname, String gender, String dob,
			String address, String phoneNo, String email, Date doe, Image image, String position) {
		super();
		this.id = id;
		this.fName = fName;
		this.mName = mName;
		this.surname = surname;
		this.gender = gender;
		this.dob = dob;
		this.address = address;
		this.phoneNo = phoneNo;
		this.email = email;
		this.doe = doe;
		this.image = image;
		this.position = position;
	}



	public Date getDoe() {
		return doe;
	}
	
	public BigDecimal getId() {
		return id;
	}
	public Attendant setId(BigDecimal id) {
		this.id = id;
		return this;
	}
	public String getfName() {
		return fName;
	}
	public Attendant setfName(String fName) {
		this.fName = fName;
		return this;
	}
	public String getmName() {
		return mName;
	}
	public Attendant setmName(String mName) {
		this.mName = mName;
		return this;
	}
	public String getSurname() {
		return surname;
	}
	public Attendant setSurname(String surname) {
		this.surname = surname;
		return this;
	}
	public String getGender() {
		return gender;
	}
	public Attendant setGender(String gender) {
		this.gender = gender;
		return this;
	}
	
	public  String getDob() {
		return dob;
	}
	public Attendant setDob(String dob) {
		this.dob = dob;
		return this;
	}
	public Attendant setDoe(Date doe) {
		this.doe = doe;
		return this;
	}
	public String getAddress() {
		return address;
	}
	public Attendant setAddress(String address) {
		this.address = address;
		return this;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public Attendant setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public Attendant setEmail(String email) {
		this.email = email;
		return this;
	}
	
	public String getPosition() {
		return position;
	}
	public Attendant setPosition(String position) {
		this.position = position;
		return this;
	}
	public Image getImage() {
		return image;
	}
	public Attendant setImage(Image image) {
		this.image = image;
		return this;
	}

	
	public Attendant BuildAttendant() {
		
		return new Attendant( id, fName, mName,  surname, gender, dob,
				 address,  phoneNo,  email, doe,  image, position);
	}
}
