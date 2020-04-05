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
import javax.persistence.OneToMany;

@Entity
public class Agency {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="aid")
	private int aid;
	
	@Column
	private String agencyName;
	
	@Column
	private String mobileNumber;
	
	@Column
	private String email;
	
	@Column
	private String password;
	
	@Column
	private String city;
	
	
	   
    @OneToMany(targetEntity = Hoardings.class,mappedBy = "agency",fetch = FetchType.LAZY,cascade = CascadeType.ALL)    
    private Set<Hoardings> haordings;

    
    @OneToMany(targetEntity = Orders.class,mappedBy = "agency1",fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    private List<Orders> orders;
 
	
	
	
	
	
	




	public Set<Hoardings> getHaordings() {
		return haordings;
	}

	public void setHaordings(Set<Hoardings> haordings) {
		this.haordings = haordings;
	}

	public List<Orders> getOrders() {
		return orders;
	}

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}



	public Agency(int aid, String agencyName, String mobileNumber, String email, String password, String city,
			Set<Hoardings> haordings, List<Orders> orders) {
		super();
		this.aid = aid;
		this.agencyName = agencyName;
		this.mobileNumber = mobileNumber;
		this.email = email;
		this.password = password;
		this.city = city;
		this.haordings = haordings;
		this.orders = orders;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public String getAgencyName() {
		return agencyName;
	}

	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	

	public Agency() {
		super();
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

	@Override
	public String toString() {
		return "Agency [aid=" + aid + ", agencyName=" + agencyName + ", mobileNumber=" + mobileNumber + ", email="
				+ email + ", password=" + password + ", city=" + city + ", haordings=" + haordings + ", orders="
				+ orders + "]";
	}


	
	
	

}
