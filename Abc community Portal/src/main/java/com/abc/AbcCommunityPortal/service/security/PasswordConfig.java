package com.abc.AbcCommunityPortal.service.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
@Configuration    
public class PasswordConfig {
	
@Bean
public PasswordEncoder passowordEncoder() {
	return new BCryptPasswordEncoder(10);
}
}
