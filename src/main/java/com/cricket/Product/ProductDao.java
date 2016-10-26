package com.cricket.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public interface ProductDao {
	
	void insert(Product P);
	void update(Product P);
	void delete(int ProductID);
	Product getProduct(int ProductId);
	public List<Product> getAllProduct();
	public Product geProductWithMaxId();
	

}
