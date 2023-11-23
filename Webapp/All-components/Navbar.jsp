<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
	<div class="container-fluid">
		<img alt="" src="image/logo.png" height=" 50px" class="p-2"> <a
			class="navbar-brand fw-bolder" href="index.jsp">CUTM-Mentor
			Connect </a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">


			<ul class="navbar-nav ms-auto mb-2mb-lg-0">

				<c:if test="${ empty userobj}">

					<li class="nav-item me-3 fw-bold"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item me-3 fw-bold"><a class="nav-link active"
						aria-current="page" href="About.jsp">About</a></li>

					<a href="Adminlogin.jsp" class="btn btn-light me-2 fw-bold"
						type="submit"><i class="fa fa-lock me-2" aria-hidden="true"></i>Admin</a>

					<a href="Signin.jsp" class="btn btn-light me-2 fw-bold"
						type="submit"><i class="fa fa-sign-in me-2" aria-hidden="true"></i>Sign-In</a>

					<a href="Signup.jsp" class="btn btn-light me-2 fw-bold"
						type="submit"><i class="fa fa-registered me-2"
						aria-hidden="true"></i>Sign-Up</a>

				</c:if>


				<c:if test="${ not empty userObj }">
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="#">Attendance</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="Mentee-Feedback.jsp">FeedBack</a></li>

					<li class="nav-item  dropdown me-2"><a
						class="nav-link dropdown-toggle text-color-white" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							${ userObj.fullName} </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Change Password</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="userSignout">Sign-Out</a></li>
						</ul></li>

				</c:if>




			</ul>


		</div>

	</div>
</nav>