package com.example.CDWeb.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CDWeb.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	List<Product> findAll();
	
	Product findByProductid(Integer productid);
	
	List<Product> findByCategoryCateid(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByPriceAsc(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByPriceDesc(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByProductNameAsc(Integer cateid);
	
	List<Product> findByCategoryCateidOrderByProductNameDesc(Integer cateid);
	
	

}
