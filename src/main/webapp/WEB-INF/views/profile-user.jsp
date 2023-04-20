<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form class="profile-form">
	<div>
		<div class="profile-form--body">
			<label>Họ</label> 
			<input type="text">
		</div>
		<div class="profile-form--body">
			<label>Tên</label> 
			<input type="text">
		</div>
		<div class="profile-form--body">
			<label>Email</label> 
			<input type="email" value="dksj@gmail.com" readonly="readonly">
		</div>
		<div class="profile-form--body">
			<label>Số điện thoại</label> 
			<input type="number">
		</div>
		<div class="profile-form--body">
            <label>Địa chỉ</label> 
            <input type="text"> 
        </div>
		<div class="profile-form--body">
			<label>Giới tính</label>
			<div class="radio-group">
				<label for="nam"> 
					<input type="radio" id="nam" name="gender" value="Nam"> 
					Nam
				</label> 
				<label for="nu"> 
					<input type="radio" id="nu" name="gender" value="Nữ"> 
					Nữ
				</label>
			</div>
		</div>
		<input value="Cập nhật" type="submit" class="profile-form--btn">
	</div>
	<div style="text-align: center;">
		<div class="profile-form--img">
			<img alt="avatar" id="avatar" src="https://i.pinimg.com/736x/03/b3/00/03b300a50dab76493bdc4afcd0f5e415.jpg">
		</div>
		<input id="avatar-input" style="display: none;" type="file" accept=".jpg, .jpeg, .png">
		<button onclick="chooseFile()" class="profile-form--img-btn" type="button">Chọn ảnh</button>
		<p class="dinhdang">Định dạng: .JPG, .JPEG, .PNG</p>
	</div>
</form>


<script>
	//avatar update
	const avatarInput = document.getElementById("avatar-input");
	const avatar = document.getElementById("avatar");

	function chooseFile() {
		avatarInput.click();
	}
	avatarInput.addEventListener("change", function() {
		var reader = new FileReader();
	
		reader.onload = function(e) {
			avatar.src = e.target.result;
		}
		reader.readAsDataURL(this.files[0]);
	})
</script>


