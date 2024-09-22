<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
</head>
<body>
<div id="wrapper">
		<div class="container">
			<div class="row justify-content-around">
				<form action="${pageContext.request.contextPath}/register" method="POST" class="col-md-6 bg-light p-3">
					<c:if test="${alert !=null}">
						<h3 class="alert alertdanger">${alert}</h3>
					</c:if>
					<h1 class="text-center">REGISTER</h1>
					<section>
					<div class="form-group">
						<label for="username">Tên đăng nhập</label> 
						<input type="text" name="username" id="username" class="form-control">
					</div>
					</section>
					<section>
					<div class="form-group">
						<label for="fullname">Họ tên</label> 
						<input type="text" name="fullname" id="fullname" class="form-control">
					</div>
					</section>
					<section>
					<div class="form-group">
						<label for="email">Email</label> 
						<input type="email" name="email" id="email" class="form-control" placeholder="email@gmail.com">
					</div>
					</section>
					<section>
					<div class="form-group">
						<label for="phone">Số điện thoại</label> 
						<input type="text" name="phone" id="phone" class="form-control">
					</div>
					</section>
					<section>
					<div class="form-group">
						<label for="password" class="form-label">Mật khẩu</label>
						<input type="password" class="form-control" id="password" name="password">
					</div>
					</section>
					<section>
					<div class="form-group">
						<label for="repassword" class="form-label">Nhập lại mật khẩu</label>
						<input type="password" class="form-control" id="repassword" name="repassword">
					</div>
					</section>				
					<br>
					<input type="submit" value = "Register" class="btn-primary btn btn-block" style = "width: 100%;">
					<hr>
					<h5>Already have an account? <a href="${pageContext.request.contextPath}/login"><b>Login</b></a> </h5>
				</form>
			</div>
		</div>
	</div>
</body>
</html>