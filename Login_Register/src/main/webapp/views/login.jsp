<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
				<form action="${pageContext.request.contextPath}/login"
					method="POST" class="col-md-6 bg-light p-3">
					<c:if test="${alert !=null}">
						<h3 class="alert alertdanger">${alert}</h3>
					</c:if>
					<h1 class="text-center">LOGIN</h1>
					<section>
						<div class="form-group">
							<label for="username">Tên đăng nhập</label> <input type="text"
								name="username" id="username" class="form-control" accept="image/*">
						</div>
					</section>

					<section>
						<div class="form-group">
							<label for="password" class="form-label">Mật khẩu</label> <input
								type="password" class="form-control" id="password"
								name="password">
						</div>
					</section>
					<section>
						<div
							style="display: flex; justify-content: space-between; align-items: center; width: 100%;">
							<label style="display: flex; align-items: center;">
							<input type="checkbox" style="margin-right: 5px;"> Nhớ tôi
							</label> <a href="${pageContext.request.contextPath}/forgotpass" style="color: red;">Quên mật khẩu?</a>
						</div>
					</section>
					<br> 
					<input type="submit" value="Login" class="btn-primary btn btn-block">
					<hr>
					<h5>Don't have an account? <a href="${pageContext.request.contextPath}/register"><b>Register</b></a> </h5>
					
				</form>
			</div>
		</div>
	</div>
</body>
</html>