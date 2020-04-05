package com.example.demo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ManyToAny;

@Entity
public class Orders {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int oid;
	
	@Column
	private  String Username;
	
	@Column
	private String number;
	
	@Column
	private String email;


    @ManyToOne(targetEntity = Hoardings.class,fetch = FetchType.LAZY,cascade =CascadeType.ALL)
    @JoinColumn(name="hid")
    private Hoardings hoar;
    
    
    
    @ManyToOne(targetEntity = Agency.class,fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinColumn(name="aid")
    private Agency agency1;
    






	public Orders(int oid, String username, String number, String email, Hoardings hoar, Agency agency1) {
		super();
		this.oid = oid;
		Username = username;
		this.number = number;
		this.email = email;
		this.hoar = hoar;
		this.agency1 = agency1;
	}

	public Hoardings getHoar() {
		return hoar;
	}

	public void setHoar(Hoardings hoar) {
		this.hoar = hoar;
	}

	public Agency getAgency1() {
		return agency1;
	}

	public void setAgency1(Agency agency1) {
		this.agency1 = agency1;
	}

	public Orders()
    {
    	
    }

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	

}
