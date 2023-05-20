package com.example.CDWeb.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	
	private List<Product> items;
	
	public Cart() {
		items = new ArrayList<>();
	}
	
	public void addItem(Product product) {
		items.add(product);
	}
	
	public void removeItem(int index) {
		items.remove(index);
	}
	
	public List<Product> getItems() {
		return items;
	}
	
	public int getSize() {
		return items.size();
	}
	
	public double getTotal() {
		double total = 0;
		for(Product item : items) {
			total += item.getPrice();
		}
		return total;
	}
	
}




