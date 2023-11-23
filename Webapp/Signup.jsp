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
	box-shadow: 0 0 10px 0 grey;
}
</style>

</head>
<body>
	<%@include file="All-components/Navbar.jsp"%>
	<div class="Container p-5">
		<div class="row">


			<div class="col-md-8 offset-md-2">
				<div class="shadow">
					<div class="card-body">

						<div>

							<img alt="" src="image/logo.png" height="50px">

							<h5 class="text-center mb-5 text-decoration-underline">Sign-Up
								Here</h5>
						</div>

						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-6">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="user_register" class="row g-3" method="post">

							<div class="col-md-6">
								<label for="Name4" class="form-label">Enter Your Name</label> <input
									type="text" class="form-control" id="inputcname4"
									placeholder="Enter Your Full Name" required name="fullname">
							</div>

							<div class="col-md-6">
								<label for="regd_no" class="form-label">Enter Your
									Regd_No</label> <input type="text" class="form-control"
									id="inputcname4"
									placeholder="Enter Your college registration_no" required
									name="regd_no">
							</div>

							<div class="col-md-6">
								<label for="regd_no" class="form-label">Enter Your
									Branch</label> <input type="text" class="form-control" id="inputcname4"
									placeholder="Enter Your branch name" required name="branch">
							</div>


							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label> <input
									type="email" class="form-control" id="inputEmail4"
									placeholder="Enter your college Email" required name="stud_email">
								<div id="emailHelp" class="form-text">We'll never share
									your details with anyone else.</div>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Student Contact_no</label> <input
									type="number" class="form-control" id="inputnumber"
									placeholder="Enter your contact_no" required
									name="stud_no">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Parent_Name</label>
								<input type="text" class="form-control" id="inputparent"
									placeholder="Enter your Parent_name" required name="parent">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Parent_No</label> <input
									type="number" class="form-control" id="inputnumber"
									placeholder="Enter your Parent_contact_no" required
									name="parent_no">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Parent_Email</label>
								<input type="email" class="form-control" id="inputEmail4"
									placeholder="Enter your Parent_name" required name="parent_email">
								<div id="emailHelp" class="form-text">We'll never share
									your details with anyone else.</div>
							</div>



							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Password</label>
								<input type="password" class="form-control" id="inputPassword4"
									placeholder="Enter Your Password" required name="password">
							</div>


							<div class="col-12 mb-2">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck"
										required> <a href="#">I agree to the Term's and
										Condition of the CUTM?</a>
								</div>
							</div>
							<button type="submit" class="btn btn-primary col-md-12">
								<i class="fa fa-registered" aria-hidden="true"></i> Sign-Up
							</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>