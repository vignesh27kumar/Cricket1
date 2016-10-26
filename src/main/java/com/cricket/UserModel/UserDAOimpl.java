package com.cricket.UserModel;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class UserDAOimpl implements UserDAO{

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public void insert(User U) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(U);
	}

	@Override
	@Transactional
	public void update(User U) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(U);
	}

	@Override
	@Transactional
	public void delete(int uid) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().createQuery("delete from User as i where i.ID = :id").setLong("id", uid).executeUpdate();
	}

	@Override
	@Transactional
	public User getuser(int uid) {
		List l = sessionFactory.getCurrentSession().createQuery("from User as i where i.ID = :id").setLong("id", uid).list();
		if (l.size()>0)
		{
			return (User)l.get(0);
		}
		else
		{
			return null;
		}
		
	}

	@Override
	@Transactional
	public List<User> getAlluser() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}
	
	
}