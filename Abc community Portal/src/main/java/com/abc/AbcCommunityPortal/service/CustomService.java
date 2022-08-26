package com.abc.AbcCommunityPortal.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.abc.AbcCommunityPortal.dao.Userdao;
import com.abc.AbcCommunityPortal.dto.Users;
import com.abc.AbcCommunityPortal.service.security.ApplicationUserDetail;
@Service
public class CustomService implements UserDetailsService {
	
	@Autowired
	Userdao userrepo;
    Users user;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		user=userrepo.findByUserName(username);
		if(user==null) {
			System.out.println("User name is Invalid");
		}
		return new ApplicationUserDetail(user);
	}

	
}
