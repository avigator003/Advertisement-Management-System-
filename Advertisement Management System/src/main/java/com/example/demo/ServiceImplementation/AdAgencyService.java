package com.example.demo.ServiceImplementation;

import java.nio.file.attribute.UserPrincipal;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.example.demo.Service.AgencyService;
import com.example.demo.model.Agency;
import com.example.demo.model.Customer;
import com.example.demo.model.Hoardings;
import com.example.demo.model.Orders;
import com.example.demo.repository.AdAgencyRepository;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.HoardingRepository;
import com.example.demo.repository.OrdersRepository;

@Service
public class AdAgencyService  implements  AgencyService,UserDetailsService {

	
	@Autowired
	private AdAgencyRepository repo;
	  
	
   @Autowired
   private HoardingRepository repo1;
	
   @Autowired
   private CustomerRepository repo2;

   @Autowired
   private OrdersRepository repo3;
   
   
   
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	
		Agency agency=repo.findByAgencyName(username);
		if(agency==null)
		{
			
			throw new UsernameNotFoundException("USer not Found"); 
		}
		return new com.example.demo.Principal.UserPrincipal(agency) {
			
			
		};
		
		
		
		
	}
	

	
	@Override
	public Agency saveAgency(Agency agency) {
		

		repo.save(agency);

		
		return agency;
	
		
		
		
	}
	

	public Customer saveCustomer(Customer customer) {
		

		repo2.save(customer);

		
		return customer;
	
		
		
		
	}
	
	public Hoardings saveHoarding(Hoardings hoarding,Agency agency,String filename)
	{
		SessionFactory sessionFactory = entityManagerFactory.unwrap(SessionFactory.class);
		Session ss=sessionFactory.openSession();
		hoarding.setFilename(filename);
		hoarding.setAgency(agency);
		ss.save(hoarding);
		ss.beginTransaction().commit();
		ss.close();
		
		return hoarding;
	}
	public Agency giveDetails(String username)
	{
		
		Agency agency=repo.findByAgencyName(username);
		if(agency==null)
		{
			
			throw new UsernameNotFoundException("USer not Found"); 
		}
		
	return agency;
			
			
		}
	
	@Autowired
	private EntityManagerFactory entityManagerFactory;
	
	
	public Customer login(String username,String password)
	{
		SessionFactory sessionFactory = entityManagerFactory.unwrap(SessionFactory.class);
		Session ss=sessionFactory.openSession();
		Query query=(Query) ss.createQuery("from Customer c where customerName=:username and password=:password");
       
		   query.setString("username",username);
           query.setString("password",password);
           Customer customer=(Customer) query.uniqueResult();
   
           
           
		if(customer==null)
		{
			return null;
		}
		return customer;

	}

	public List<Hoardings> hoar()
	{
		SessionFactory sessionFactory = entityManagerFactory.unwrap(SessionFactory.class);
		Session ss=sessionFactory.openSession();
		Query query=(Query) ss.createQuery("from Hoardings h ORDER BY h.id DESC");
       List<Hoardings> hoardings=query.list();
   		
		
		return hoardings;

	}
	
	public List<Hoardings> findHoarding(String city1)
	{
		
		SessionFactory sessionFactory = entityManagerFactory.unwrap(SessionFactory.class);
		Session ss=sessionFactory.openSession();
		Query query=(Query) ss.createQuery("from Hoardings h where h.city=:city");
		query.setParameter("city", city1);
     List<Hoardings> hoardings=query.list();
   
     return hoardings;
		
	}
	
	public Hoardings ho(int id)
	{
	SessionFactory sessionFactory = entityManagerFactory.unwrap(SessionFactory.class);
		Session ss=sessionFactory.openSession();
		Hoardings hoarding=ss.get(Hoardings.class, id);
		ss.close();
		return hoarding;
		
	}
	
	public boolean saveOrders(Orders order,Hoardings hoarding2,Agency agency1)
	{

		SessionFactory sessionFactory = entityManagerFactory.unwrap(SessionFactory.class);
		Session ss=sessionFactory.openSession();
	    
		order.setHoar(hoarding2);
		order.setAgency1(agency1);
		ss.save(order);
		
		ss.beginTransaction().commit();
		ss.close();
		
		
		return true;
	}
	
	
}
	
	
	
