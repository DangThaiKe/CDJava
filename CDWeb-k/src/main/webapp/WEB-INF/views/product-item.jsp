<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="product">
	<a href="#" class="product-item">
	    <img 
	    	alt="product-img" 
	    	src="${product.image}"
	    >
	    <span class="rose-gold">rose gold</span>
	    <div class="product-item-body">
	      	<h4>${product.productName}</h4>
	      	<span></span>
	      	<p>${product.price} VNĐ</p>
	    </div>
	</a>
	<button class="product-item--wishlist"></button>
</div>    