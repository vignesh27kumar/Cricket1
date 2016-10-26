package com.cricket.user;

import java.util.List;

public interface UserService {
	public void insert(User U);
	public void update(User U);
	public void delete(int Uid);
	public User getuser(int Uid);
	public List <User>  getAllUser();

}
