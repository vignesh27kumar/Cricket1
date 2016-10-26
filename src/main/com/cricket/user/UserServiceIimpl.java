package com.cricket.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceIimpl implements UserService {
@Autowired
UserDAO udao;
	
	public void insert(User U) {
		// TODO Auto-generated method stub
	udao.insert(U);
	}

	
	public void update(User U) {
		// TODO Auto-generated method stub
		udao.update(U);
		
	}

	
	public void delete(int Uid) {
		// TODO Auto-generated method stub
		udao.delete(Uid);
		
	}

	
	public User getuser(int Uid) {
		// TODO Auto-generated method stub
		return udao.getuser(Uid);
	}

	
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return udao.getAlluser();
	}

}
