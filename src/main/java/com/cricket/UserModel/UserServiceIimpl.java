package com.cricket.UserModel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Service
@EnableTransactionManagement
public class UserServiceIimpl implements UserService {
@Autowired
UserDAO udao;
	
@Transactional
	public void insert(User U) {
		// TODO Auto-generated method stub
	udao.insert(U);
	}

@Transactional
	public void update(User U) {
		// TODO Auto-generated method stub
		udao.update(U);
		
	}

@Transactional
	public void delete(int Uid) {
		// TODO Auto-generated method stub
		udao.delete(Uid);
		
	}

@Transactional
	public User getuser(int Uid) {
		// TODO Auto-generated method stub
		return udao.getuser(Uid);
	}

@Transactional
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return udao.getAlluser();
	}

}
