package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Agency;

@Repository
public interface AdAgencyRepository  extends JpaRepository<Agency, Integer>{
	
	
	
	public Agency findByAgencyName(String username);
	
	
	
}
