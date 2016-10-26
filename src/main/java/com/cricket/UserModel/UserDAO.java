package com.cricket.UserModel;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.cricket.UserModel.User;

@Repository
public interface UserDAO {
	
	public void insert(User U);
	public void update(User U);
	public User getuser(int uid) ;
	public void delete(int uid);
	public List<User> getAlluser() ;
}
