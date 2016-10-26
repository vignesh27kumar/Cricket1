package com.cricket.Product;

import java.util.List;

public interface ProductService {
	void insert(Product P);
	void update(Product P);
	void delete(int ProductId);
	Product getProduct(int ProductId);
	public List <Product> getAllProducts();
	public Product getProductWithMaxId();

}
