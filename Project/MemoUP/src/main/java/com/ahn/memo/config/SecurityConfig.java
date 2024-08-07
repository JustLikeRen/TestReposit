package com.ahn.memo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@EnableWebSecurity
public class SecurityConfig {
  
	@SuppressWarnings({ "removal", "deprecation" })
	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf().disable()
		.authorizeRequests()
		.anyRequest().permitAll();
		
		http.authorizeRequests().requestMatchers("/signin/view", "/signup/view").permitAll()
		.anyRequest().authenticated();
		return http.build();
	}
}
	
