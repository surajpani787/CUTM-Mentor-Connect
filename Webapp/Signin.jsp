<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="images/url" href="image/logo.png">
<meta charset="UTF-8">
<%@include file="../All-components/All-cdn-links.jsp"%>
<title>CUTM-Mentor Connect</title>
<%@include file="All-components/All-cdn-links.jsp"%>

<style type="text/css">
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>
</head>
<body>
	<%@include file="All-components/Navbar.jsp"%>
	<div class="Container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card shadow">
					<div class="card-body">

						<div>
							<h5 class="text-center mb-4">Sign-in Here</h5>
						</div>


						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-6">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>


						<form action="userLogin" method="post">

							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter your college Email" required name="stud_email">
								<div id="emailHelp" class="form-text">We'll never share
									your details with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control"
									id="exampleInputPassword1" required
									placeholder="Enter Your Password" name="password">
							</div>

							<div class="mb-3">
								<a href="#">Forget Password?</a>
							</div>

							<button type="submit" class="btn btn-primary col-md-12">
								<i class="fa fa-sign-in" aria-hidden="true"></i> Sign-In
							</button>
							
							<div class="mb-3 text-center mt-2">
								<a href="Mentorlogin.jsp" class= "text-underline">Mentor-Login</a>
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>