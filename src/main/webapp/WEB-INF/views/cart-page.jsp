<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<link href="/css/header.css" rel="stylesheet" type="text/css" />
<link href="/css/newletter.css" rel="stylesheet" type="text/css" />
<link href="/css/cart-page.css" rel="stylesheet" type="text/css" />
<link href="/css/newletter.css" rel="stylesheet" type="text/css" />
<link href="/css/footer.css" rel="stylesheet" type="text/css" />

<!-- Bao gồm Bootstrap 5 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Bao gồm Ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- Bao gồm jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Bao gồm Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <!-- Bootstrap Icon -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<title>Insert title here</title>
</head>
<body>
	
	<div id="cart">
		<jsp:include page="header.jsp"></jsp:include>
		
		<!-- Shop cart -->
		<div class="shop-cart">
			<h1>SHOPPING CART</h1>
			
			<div class="container" style="margin-top: 20px; padding: 0;">
  				<div class="row">
    				<div class="col-7">
      					<div class="shop-cart-item">
      						<a href="#">
      							<img alt="shop-cart-item--img" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/g1c0weypw58r7hyiyel1.png?v=1680023635&width=300">
      						</a>
      						<div class="shop-cart-item--detail">
      							<div class="shop-cart-item--inner">
	      							<a href="#">QUADRO CHERRY BLOSSOM</a>
	      							<span></span>
	      							<p>323323 VNĐ</p>
      							</div>
	      						<div class="shop-cart-item--controll">
	      							<div class="shop-cart-item--controll-body">
		      							<button class="shop-cart-item--control-btn">
									  		<i class="bi bi-dash"></i>							  				
									  	</button>
									  	<span>2</span>
									  	<button class="shop-cart-item--control-btn">
									  		<i class="bi bi-plus"></i>
								  		</button>
	      							</div>
							  		<button class="shop-cart-item--btn-close"> 
								  		<i class="bi bi-trash3"></i>
							  		</button>
	      						</div>
      						</div>
      					</div>
      					<div class="shop-cart-item">
      						<a href="#">
      							<img alt="shop-cart-item--img" src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/g1c0weypw58r7hyiyel1.png?v=1680023635&width=300">
      						</a>
      						<div class="shop-cart-item--detail">
      							<div class="shop-cart-item--inner">
	      							<a href="#">QUADRO CHERRY BLOSSOM</a>
	      							<span></span>
	      							<p>323323 VNĐ</p>
      							</div>
	      						<div class="shop-cart-item--controll">
	      							<div class="shop-cart-item--controll-body">
		      							<button class="shop-cart-item--control-btn">
									  		<i class="bi bi-dash"></i>							  				
									  	</button>
									  	<span>2</span>
									  	<button class="shop-cart-item--control-btn">
									  		<i class="bi bi-plus"></i>
								  		</button>
	      							</div>
							  		<button class="shop-cart-item--btn-close"> 
								  		<i class="bi bi-trash3"></i>
							  		</button>
	      						</div>
      						</div>
      					</div>
    				</div>
    				<div class="col-5 px-5">
      					<div class="cart-summer">
      						<div class="cart-total">
      							<span>Tổng phụ:</span>
      							<span>223232 VNĐ</span>
      						</div>
      						<a href="#" class="cart-checkout--btn">Thanh toán</a>
      						<span class="cart-fax">ĐÃ BAO GỒM THUẾ. VẬN CHUYỂN ĐƯỢC TÍNH KHI THANH TOÁN</span>
      					</div>
    				</div>
  				</div>
			</div>
		</div>
		
		<!-- new letter -->
		<jsp:include page="newletter.jsp"></jsp:include>
		
		<!-- Footer -->
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	
<script>
	//Lấy ra danh sách các phần tử trong trang web mà muốn hiển thị sau khi scroll qua
	const elementsToShow = document.querySelectorAll(".show-scroll");
	console.log(elementsToShow)
	// Lắng nghe sự kiện scroll trên trang web
	window.addEventListener('scroll', function() {
  		// Lấy vị trí hiện tại của scroll
  		const currentScrollPos = window.pageYOffset;
  		// Duyệt qua danh sách các phần tử muốn hiển thị
  		elementsToShow.forEach(function(element) {
    		// Nếu vị trí của scrollY vượt qua vị trí offsetTop của phần tử đó
    		if (currentScrollPos > element.offsetTop - 500) {
      			// Thêm lớp hiện ra vào phần tử đó để hiển thị nó
      			element.classList.add("show");
    		}
  		});
	});
</script>	
	
</body>
</html>