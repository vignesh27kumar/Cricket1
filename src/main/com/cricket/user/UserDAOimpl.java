package com.cricket.user;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class UserDAOimpl implements UserDAO {

	@Autowired
	SessionFactory sess;
	@Transactional

	public void insert(User U) {
		// TODO Auto-generated method stub
		sess.getCurrentSession().save(U);
		
	}

	public void update(User U) {
		// TODO Auto-generated method stub
		sess.getCurrentSession().update(U);;
		
	}

	public void delete(int uid) {
		// TODO Auto-generated method stub
		//sess.getCurrentSession().createQuery("delete from User U where U.id = :id").setInteger("id",Uid)Uid.executeupdate();
		
	}

	public User getuser(int uid) {
		List<User> list =sess.getCurrentSession().createQuery("from User U where Uid").setInteger("id",uid).list();
		if(!list.isEmpty())
		{
			return list.get(0);
		}else
		return null;
		
	}

	
	

	public List<User> getAlluser() {
		List<User> list = sess.getCurrentSession().createQuery("from User uid").list();
		return list;
	}
	
}