package com.cricket.Product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


@Repository
@EnableTransactionManagement

public class ProductDAOimpl implements ProductDao{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public void insert(Product P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(P);
	}

	@Transactional
	public void update(Product P) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(P);
		
	}

	@Transactional
	public void delete(int ProductID) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().createQuery("delete from Product P where ProductId=:id").setInteger("id", ProductID).executeUpdate();
		
	}

	@Transactional
	public Product getProduct(int ProductId) {
		// TODO Auto-generated method stub
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product P where ProductId=:id").setInteger("id", ProductId).list();
		if(!list.isEmpty())
		{
			return list.get(0);
		}
		
		else
		{
		return null;
		}
	}

	

	

	@Transactional
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product P").list();
		return list;
	}

	@Transactional
	public Product geProductWithMaxId() {
		// TODO Auto-generated method stub
		List<Product> list = sessionFactory.getCurrentSession().createQuery("from Product P where ProductId= (select max(p1.id) from Product p1)").list();
		if(!list.isEmpty())
		{
			return list.get(0);
		}
		
		else
		return null;
	}
	
	
}