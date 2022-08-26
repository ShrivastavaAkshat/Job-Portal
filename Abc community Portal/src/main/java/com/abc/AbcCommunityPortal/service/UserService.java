package com.abc.AbcCommunityPortal.service;

import java.util.List;

import com.abc.AbcCommunityPortal.dto.Users;
import com.abc.AbcCommunityPortal.dto.AppliedJob;
import com.abc.AbcCommunityPortal.dto.Jobs;


public interface UserService {
	public void AddUserDetails(Users usr);
	public List<Users> showAllUser();
	public Users showUser(String userNamee);
	public void deleteData(int userId);
	public Users SearchUser(int d);
	public Users viewProfile(String userNamee);
	
	public String addJobs(Jobs job);
	public List<Jobs> showJobs();
	
	public void addAppliedUser(AppliedJob applyjob);
	

	
	
	}
