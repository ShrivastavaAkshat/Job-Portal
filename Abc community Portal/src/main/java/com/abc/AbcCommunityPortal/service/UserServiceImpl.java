package com.abc.AbcCommunityPortal.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.abc.AbcCommunityPortal.dao.Userdao;
import com.abc.AbcCommunityPortal.dto.Users;

import com.abc.AbcCommunityPortal.dto.Jobs;
import com.abc.AbcCommunityPortal.dao.AppliedJobRepository;
import com.abc.AbcCommunityPortal.dao.JobRepository;


import com.abc.AbcCommunityPortal.dto.AppliedJob;



@Service("userService")
public class UserServiceImpl implements UserService {
	private PasswordEncoder passwordencoder;
	@Autowired
	Userdao Udao;
	Users user;
	
	@Autowired
	private JobRepository jobrepo;

	@Autowired
	AppliedJobRepository applyrepo;
	
	
	List<Users> userDetails = new ArrayList<Users>();
	
	@Override
	public void AddUserDetails(Users us) {
		// TODO Auto-generated method stub
		us.setRole("USER");
		us.setPassword(passwordencoder.encode(us.getPassword()));
		 Udao.save(us);
		 	
		}
	
	@Autowired
	public UserServiceImpl(PasswordEncoder encoder) {
		// TODO Auto-generated constructor stub
		this.passwordencoder=encoder;
	}
	
	

	@Override
	public List<Users> showAllUser() {
		List<Users> database = Udao.findAll();
		return database;
	}
	

	@Override
	public void deleteData(int id) {
		Udao.deleteById(id);
	}
	
	@Override
	public Users SearchUser(int id) {
		
		Optional<Users> myData=Udao.findById(id);
Users p=myData.get();
		return p;
		
		
	}
	
	@Override
    public Users showUser(String name ) {
        // TODO Auto-generated method stub
        user = Udao.findByUserName(name); //to find user by there username 	
//        User M=user.();
        
        return user;

}

	@Override
	public Users viewProfile(String userNamee) {
	Users usr = Udao.findByUserName(userNamee);
		return usr;
	}
	
	@Override
	public String addJobs(Jobs job) {
		jobrepo.save(job);
		return "Job Added";
	}


	@Override
	public List<Jobs> showJobs() {
		List<Jobs> jobList = jobrepo.findAll();
		return jobList;
	}

	@Override
	public void addAppliedUser(AppliedJob applyjob) {
		// TODO Auto-generated method stub
		applyrepo.save(applyjob);
	}
}
