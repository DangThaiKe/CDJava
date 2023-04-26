<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="order-container">
	<h2>Đơn hàng của tôi</h2>
	<div class="order-list">
		<div class="order-item active">Tất cả</div>
		<div class="order-item">Chờ Thanh toán</div>
		<div class="order-item">Vận chuyển</div>
		<div class="order-item">Đang giao</div>
		<div class="order-item">Hoàn thành</div>
		<div class="line"></div>
	</div>
	<div class="order-pane">
		<div class="order-pane-tab active">
			<!-- List order -->
			<table class="order-table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Trạng thái</th>
						<th>Ngày mua</th>
						<th>Tổng tiền</th>
					</tr>
				</thead>
				<tbody>
					<tr class="order-table-item">
						<td>1</td>
						<td>Đã giao hàng</td>
						<td>20/04/2023</td>
						<td>500,000đ</td>
					</tr>
					<tr class="order-table-item">
						<td>2</td>
						<td>Đã giao hàng</td>
						<td>20/04/2023</td>
						<td>500,000đ</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="order-pane-tab">
			<span class="order-empty">Không có đơn hàng</span>
		</div>
		<div class="order-pane-tab">
			<span class="order-empty">Không có đơn hàng</span>
		</div>
		<div class="order-pane-tab">
<!-- 			<span class="order-empty">Không có đơn hàng</span> -->
			<!-- List order -->
			<table class="order-table">
				<thead>
					<tr>
						<th>ID</th>
						<th>Trạng thái</th>
						<th>Ngày mua</th>
						<th>Tổng tiền</th>
					</tr>
				</thead>
				<tbody>
					<tr class="order-table-item">
						<td>1</td>
						<td>Đã giao hàng</td>
						<td>20/04/2023</td>
						<td>500,000đ</td>
					</tr>
					<tr class="order-table-item">
						<td>2</td>
						<td>Đã giao hàng</td>
						<td>20/04/2023</td>
						<td>500,000đ</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="order-pane-tab">
			<span class="order-empty">Không có đơn hàng</span>
		</div>
	</div>
</div>
<div class="order-detail">
	<div class="order-detail--header">
		<h2>Chi tiết đơn hàng</h2>
		<span class="order-detail--header-back">Quay lại</span>
	</div>
	<!-- Order detail -->
	<div class="order-detail-container">
		<div class="order-detail-list">
			<div class="order-detail-list--header">
				<span>Id: 1</span> 
				<span>Ngày mua: 20/4/2023</span>
			</div>
			<div class="order-detail-item">
				<div class="order-detail-item--left">
					<img 
						alt="order-detail-img"
						src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/mwdyzzepnza4hqeubzwu.png?v=1680023628"
					>
					<span>Đồng hồ nam</span>
				</div>
				<p>2333 VNĐ x 2</p>
			</div>
			<div class="order-detail-item">
				<div class="order-detail-item--left">
					<img 
						alt="order-detail-img"
						src="https://cdn.shopify.com/s/files/1/0719/3244/4977/products/mwdyzzepnza4hqeubzwu.png?v=1680023628"
					>
					<span>Đồng hồ nữ</span>
				</div>
				<p>32323 VNĐ x 1</p>
			</div>
		</div>
		<div class="container" style="margin-top: 20px;">
			<div class="row">
				<div class="col-6">
					<div class="order-detail-address">
						<span>Địa chỉ giao hàng</span>
						<p>329 Hai Bà Trưng</p>
					</div>
				</div>
				<div class="col-6">
					<div class="order-detail-total">
						<div>
							<span>Tổng tiền</span> 
							<span>32873 VNĐ</span>
						</div>
						<p>Thanh toán bằng thẻ tín dụng/thẻ ghi nợ</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	//order tab ui
	const orderTabs = document.querySelectorAll('.order-item');
	const orderPanes = document.querySelectorAll('.order-pane-tab');

	const activeLine = document.querySelector('.order-item.active');
	const line = document.querySelector('.order-list .line');

	line.style.left = activeLine.offsetLeft + 'px';
	line.style.width = activeLine.offsetWidth + 'px';

	orderTabs.forEach((tab, index) => {
		const orderPane = orderPanes[index];
	 
		tab.onclick = function() {
			$('.order-item.active').removeClass('active');
			$('.order-pane-tab.active').removeClass('active');
		
			line.style.left = this.offsetLeft + 'px';
        	line.style.width = this.offsetWidth + 'px';
		
			this.classList.add('active');
			orderPane.classList.add('active');
		}
	})
	
	//order
	const orderContainer = document.querySelector('.order-container');
	const orderDetail = document.querySelector('.order-detail');
	const orderItems = document.querySelectorAll('.order-table-item');
	const backBtn = document.querySelector('.order-detail--header-back');

	orderItems.forEach((orderItem, index) => {
		orderItem.onclick = function() {
			orderContainer.style.display = 'none';
			orderDetail.style.display = 'block';
		}
	})

	backBtn.addEventListener('click', function() {
		orderContainer.style.display = 'block';
		orderDetail.style.display = 'none';
	})
</script>



