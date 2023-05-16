package com.example.CDWeb.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.CDWeb.model.Category;
import com.example.CDWeb.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

	List<Product> findAll();
	
	List<Product> findByCategoryCateID(Integer cateID);
	
	List<Product> findByCategoryCateIDOrderByPriceAsc(Integer cateID);
	
	List<Product> findByCategoryCateIDOrderByPriceDesc(Integer cateID);
	
	List<Product> findByCategoryCateIDOrderByProductNameAsc(Integer cateID);
	
	List<Product> findByCategoryCateIDOrderByProductNameDesc(Integer cateID);
	
}
