package com.cricket.Product;

import java.util.List;

public interface ProductDao {
	void insert(Product P);
	void update(Product P);
	void delete(Product P);
	Product getuser(int ProductId);
	public List<Product> getAlluser();
	void delete(int productId);
	

}
