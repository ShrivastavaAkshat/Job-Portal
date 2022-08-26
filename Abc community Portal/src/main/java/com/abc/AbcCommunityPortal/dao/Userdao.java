	package com.abc.AbcCommunityPortal.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abc.AbcCommunityPortal.dto.Users;

public interface Userdao extends JpaRepository<Users,Integer> {
	
	Users findByUserName(String name);

}
