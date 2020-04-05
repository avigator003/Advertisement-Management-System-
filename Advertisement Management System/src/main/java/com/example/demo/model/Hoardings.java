package com.example.demo.model;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.ManyToAny;

@Entity
public class Hoardings {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "hid")
	
	private int id;
	
	@Column
	private String filename1;
	
	@Column
	private String price;
	
	@Column
	private String email;
	
	@Column
	private String city;
	
	

	   @ManyToOne(targetEntity = Agency.class,cascade =CascadeType.ALL,fetch = FetchType.LAZY)
	   @JoinColumn(name = "aid")
	   private Agency agency;
	   
	   
	   @OneToMany(targetEntity = Orders.class,cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "hoar")
	   
	   private List<Orders> order;
	   









	public List<Orders> getOrder() {
		return order;
	}


	public void setOrder(List<Orders> order) {
		this.order = order;
	}


	public Hoardings() {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFilename() {
		return filename1;
	}


	public void setFilename(String filename) {
		this.filename1 = filename;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public Agency getAgency() {
		return agency;
	}


	public void setAgency(Agency agency) {
		this.agency = agency;
	}


	@Override
	public String toString() {
		return "Hoardings [id=" + id + ", filename1=" + filename1 + ", price=" + price + ", email=" + email + ", city="
				+ city + ", agency=" + agency + ", order=" + order + "]";
	}




	
	
}
