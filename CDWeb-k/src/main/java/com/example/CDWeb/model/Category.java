package com.example.CDWeb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Category")
public class Category {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cateID;
	
	@Column(name="cateName")
	private String cateName;
	
	// mappedBy = "category" chỉ định tên trường bên phía 
	// @ManyToOne của @Entity Product
	@OneToMany(mappedBy = "category")
	private List<Product> products;
	
	
	public Category() {
		super();
	}

	public Category(int cateID, String cateName) {
		super();
		this.cateID = cateID;
		this.cateName = cateName;
	}

	public int getCateID() {
		return cateID;
	}

	public void setCateID(int cateID) {
		this.cateID = cateID;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	
	
}
