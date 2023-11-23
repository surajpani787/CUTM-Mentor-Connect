<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.MentorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="images/url" href="image/logo.png">
<meta charset="UTF-8">
<%@include file="../All-components/All-cdn-links.jsp"%>
<title>CUTM-Mentor Connect </title>

<style type="text/css">
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>

</head>
<body>
	<%@include file="navbaradmin.jsp"%>

	<c:if test="${empty adminObj}">
		<c:redirect url="../Adminlogin.jsp"></c:redirect>
	</c:if>

	<h3 class="text-center text-decoration-underline mt-3">Admin-DashBoard</h3>

	<div class="container p-5">

		<c:if test="${not empty sucMsg}">
			<p class="text-center text-success fs-6">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>

		<c:if test="${not empty errorMsg}">
			<p class="text-center text-danger fs-3">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		
		<%MentorDao dao = new MentorDao(DBConnect.getConn());%>

		<div class="row">
			<div class="col-md-4 pb-5">
				<div class="shadow">
					<div class="card-body text-center text success">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<p>
							Admin Profile<br> single user
						</p>
					</div>
				</div>
			</div>
			
				<div class="col-md-4">
				<div class="shadow">
					<div class="card-body text-center text success">
						<i class="fa fa-users fa-3x" aria-hidden="true"></i>
						<p>
							Mentor<br><%=dao.countMentor() %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4" data-bs-toggle="modal"
				data-bs-target="#exampleModal">
				<div class="shadow">
					<div class="card-body text-center text success ">
						<i class="fa fa-user fa-3x" aria-hidden="true"></i>
						<p>
							Subject<br><%=dao.countSubject() %>
						</p>
					</div>
				</div>
			</div>



			<div class="col-md-4">
				<div class="shadow">
					<div class="card-body text-center text success" >
						<i class="fa fa-users fa-3x" aria-hidden="true"></i>
						<p>
							Mentee<br><%=dao.countMentee() %>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="shadow">
					<div class="card-body text-center text success">
						<i class="fa fa-commenting fa-3x" aria-hidden="true"></i>
						<p>
							Mentee-feedback<br><%=dao.countMentee_Feedback() %>
						</p>
					</div>
				</div>
			</div>

		</div>
	</div>




	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form action="../addMentor" method="post">
						<div class="form-group">
							<label>Enter Subject Name :-</label> 
							<input type="text"
								name="MentorSubName" placeholder="Enter subject name"
								class="form-control">
						</div>

						<div class="text-center mt-3">
							<button type="Submit" class="btn btn-primary">Add</button>
						</div>

					</form>


				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

</body>
</html>