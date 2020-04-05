package com.example.demo.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.web.server.SecurityWebFiltersOrder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Principal.UserPrincipal;
import com.example.demo.Service.AgencyService;
import com.example.demo.ServiceImplementation.AdAgencyService;
import com.example.demo.basicService.FIleUploadService;
import com.example.demo.model.Agency;
import com.example.demo.model.Customer;
import com.example.demo.model.Hoardings;
import com.example.demo.model.Orders;
import com.example.demo.repository.AdAgencyRepository;


@Controller
@RequestMapping(value = "/akshat")
public class WebController {

	@Autowired
	private AdAgencyService ser;
	
	@Autowired
	private FIleUploadService service;
	
	
	

	@RequestMapping(value = "home",method = RequestMethod.POST)
	public String index2(@RequestParam("filename1")MultipartFile file,HttpServletRequest req,Hoardings hoarding) throws IOException
	{
		HttpSession ss=req.getSession();
		int id=(int) ss.getAttribute("id");
        String filename=service.upload(file, id);
       Agency agency1= (Agency) ss.getAttribute("agency");
        
        
	    ser.saveHoarding(hoarding,agency1,filename);
		System.out.println(filename);
		return "index";
	}
	
	
	
	@RequestMapping(value = "interface")
	public String UserInterface1() 
	{
		
		return "UserInterface";
	}
	
	
	@RequestMapping(value = "UserInterface")
	public String UserInterface(Principal principal,HttpServletRequest req) throws IOException
	{
		HttpSession ss=req.getSession();
		String username=principal.getName();
		Agency agency=ser.giveDetails(username);
		ss.setAttribute("agency", agency);
		int id=agency.getAid();
		ss.setAttribute("id", id);
		
		return "redirect:/akshat/interface";
	}
	
	
	
	@RequestMapping(value = "/home/{id}")
	public String index(HttpServletRequest req ,@PathVariable("id") int id)
	{
		
		HttpSession ss=req.getSession();
		ss.setAttribute("user", id);
		return "redirect:/akshat/UserInterface";
	}
	
	@RequestMapping(value = "index")
	public String home()
	{
		
		
		return "index";
	}
	
	
	@RequestMapping(value = "login")
	public String login()
	{

		return "login";
	}

	@RequestMapping(value = "register")
	public String register()
	{
		
		return "agencyregister";
	}
	
	@RequestMapping(value = "register1")
	public String register1()
	{
		
		return "customerregister";
	}
	
	
	@RequestMapping(value = "customer")
	public String customer()
	{
		
		return "customerService";
	}
	
	@RequestMapping(value = "agency")
	public String agency()
	{
		
		return "agencyService";
	}
	
	@RequestMapping(value = "registersave")
	public String registersave(Agency agency)
	{
		
		ser.saveAgency(agency);
		
		return "agencyregister";
	}
	
	
	@RequestMapping(value = "logout-Success")
	public String logout()
	{
		return "index";
	}
	
	
	
	
	@RequestMapping(value = "customersave")
	public String customersave(Customer customer)
	{
		
		ser.saveCustomer(customer);
		
		return "customerregister";
	}
	
	@RequestMapping(value = "customerpage")
	public String login2()
	{

		return "customerlogin";
	}

	
	
	@RequestMapping(value = "customerLogin")
	public String customerLogin(@RequestParam("username")String username,@RequestParam("password")String password,HttpServletRequest req)
	{
	HttpSession ss=req.getSession();
	  Customer customer=ser.login(username, password);
	  ss.setAttribute("customer", customer);
	     
       if(customer==null)
       {
    	   
    	   return "redirect:/akshat/customerpage";
    	   
       }
		return "redirect:/akshat/customerinterface";
	}

	@RequestMapping(value = "customerinterface")
	public String customerinterface()
	{


		return "customerinterface";
	}
	
	@RequestMapping(value = "customerlogout")
	public String customerlogout()
	{

		
		
		return "redirect:/akshat/index";
	}
	
	@RequestMapping(value = "find")
	public String find(@RequestParam("select")String city,HttpServletRequest req)
	{

	HttpSession ss=req.getSession();
	
   List<Hoardings> hoarding=ser.findHoarding(city);		
   ss.setAttribute("hoardings",hoarding );
   
   
		return "redirect:/akshat/hoardings";
	}
	
	
	
	@RequestMapping(value = "hoardings")
	public String hoardings(HttpServletRequest req,ModelMap mp) throws FileNotFoundException, IOException
	{HttpSession ss=req.getSession();
	List<String> pics =new ArrayList<>();
	List<String> agencies=new ArrayList<>();
		List<Hoardings> hoarding =(List<Hoardings>) ss.getAttribute("hoardings");
		for(Hoardings hoar:hoarding)
		{

			Agency agency=hoar.getAgency();
			int agencyid=agency.getAid();
			String filename=hoar.getFilename();
			int hoardingid=hoar.getId();
		    String pic=	service.getProfilePic(agencyid, filename);
        	pics.add(pic);
            String name=agency.getAgencyName();
            agencies.add(name);
		    
		}

		mp.put("pic", pics);

		mp.put("name", agencies);
		
		
		
		
		mp.put("hoarding", hoarding);
		return "hoardings";
	}
	
	@RequestMapping(value = "/order/{id}")
	public String order(@PathVariable("id")int id,HttpServletRequest req)
	{
		HttpSession ss=req.getSession();
		Hoardings hoar2=ser.ho(id);
Agency agency=	hoar2.getAgency();
		ss.setAttribute("akshat", hoar2);

		ss.setAttribute("akshat1", agency);

		
		
		return "orderdetails";
	}
	@RequestMapping(value = "orderdetails")
	public String orderdetails(HttpServletRequest req,Orders order)
	{
		HttpSession ss=req.getSession();
		Hoardings hoarding2=(Hoardings) ss.getAttribute("akshat");
	Agency agency=(Agency) ss.getAttribute("akshat1");
	ser.saveOrders(order, hoarding2,agency);
		return "index";
	}
	
	
	@RequestMapping(value = "myorders")
	
	public String myorders(HttpServletRequest req,ModelMap mp)
	{
		HttpSession ss=req.getSession();
Agency agency=(Agency) ss.getAttribute("agency");
List<Orders> orders=agency.getOrders();


		mp.put("myorders", orders);
		
		return "myorders";
	}
	
	
	@RequestMapping(value = "orderlogout")
	
	public String orderlogout(HttpServletRequest req)
	{
		HttpSession session=req.getSession();

        req.removeAttribute("agency");
        session.invalidate();
        
		
		return "index";
	}
	
	
	

	
}
