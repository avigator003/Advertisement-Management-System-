package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Hoardings;

@Repository
public interface HoardingRepository extends JpaRepository<Hoardings, Integer>{
	
	

}



