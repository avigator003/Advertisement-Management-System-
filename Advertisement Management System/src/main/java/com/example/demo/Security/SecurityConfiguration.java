package com.example.demo.Security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;




@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UserDetailsService userDetailsService;
	
	@Bean
	public AuthenticationProvider authenticationProvider()
	{
		
		
		
		DaoAuthenticationProvider provider=new DaoAuthenticationProvider();

		provider.setUserDetailsService(userDetailsService);
		provider.setPasswordEncoder(NoOpPasswordEncoder.getInstance());
		
		return provider;
	}


	@Override
	protected void configure(HttpSecurity http) throws Exception {
	 http
	 .csrf().disable()
	 .authorizeRequests().antMatchers("/akshat/login").permitAll()
	 .and()
	 .formLogin()
	 .loginPage("/akshat/login").permitAll()
	 .defaultSuccessUrl("/akshat/home/1")
	 .failureUrl("/akshat/login?error")
	
	 .and()
	 
	 .logout().invalidateHttpSession(true)
	 .clearAuthentication(true)
	 
	 .logoutSuccessUrl("/akshat/logout-Success")
	 
	 .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
	 .deleteCookies("JSESSIONID")
	 ;
	 
	 
	 ;
	}

}

