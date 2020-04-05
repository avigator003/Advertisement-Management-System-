package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cid;
	
	@Column
	private String customerName;
	
	@Column
	private String email;
	
	@Column
	private String number;
	
	@Column
	private String password;
	
	@Column
	private String city;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Customer(int cid, String customerName, String email, String number, String password, String city) {
		super();
		this.cid = cid;
		this.customerName = customerName;
		this.email = email;
		this.number = number;
		this.password = password;
		this.city = city;
	}

	public Customer() {
		super();
	}

	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", customerName=" + customerName + ", email=" + email + ", number=" + number
				+ ", password=" + password + ", city=" + city + "]";
	}
	
	
	
}
