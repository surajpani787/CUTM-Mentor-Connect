<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa fa-graduation-cap me-2" aria-hidden="true"></i>Student-Mentoring
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">


			<ul class="navbar-nav ms-auto mb-2mb-lg-0">

				<c:if test="${ empty userobj}">

					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="index.jsp">Home</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="About.jsp">About</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="Contact.jsp">Contact</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="Adminlogin.jsp"><i
							class="fa fa-lock me-2" aria-hidden="true"></i>Admin</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="Signin.jsp"><i
							class="fa fa-sign-in me-2" aria-hidden="true"></i>Sign-In</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="Signup.jsp"><i
							class="fa fa-sign-out me-2" aria-hidden="true"></i>Sign-Up</a></li>

				</c:if>


				<c:if test="${ not empty userObj }">
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="#">Attendance</a></li>
					<li class="nav-item me-3"><a class="nav-link active"
						aria-current="page" href="#">FeedBack</a></li>

					<li class="nav-item  dropdown me-2"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">
							${ userObj.fullname} </a>
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