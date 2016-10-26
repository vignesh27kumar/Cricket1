package com.cricket.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service


public class ProductServiceimpl implements ProductService {


	@Autowired
	
	ProductDao Pdao;

	
	public void insert(Product P) {
		// TODO Auto-generated method stub
          Pdao.insert(P);
		
	}

	
	public void update(Product P) {
		// TODO Auto-generated method stub
		Pdao.update(P);
	}

	
	public void delete(int ProductId) {
		// TODO Auto-generated method stub
		Pdao.delete(ProductId);
	}

	
	public Product getProduct(int ProductId) {
		// TODO Auto-generated method stub
		return Pdao.getProduct(ProductId);
	}

	
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return Pdao.getAllProduct();
	}


	public Product getProductWithMaxId() {
		// TODO Auto-generated method stub
		return Pdao.geProductWithMaxId();
	}
	
}
