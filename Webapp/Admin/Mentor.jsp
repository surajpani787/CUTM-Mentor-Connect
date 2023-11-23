<%@page import="com.entity.Mentor"%>
<%@page import="com.DAO.MentorDao"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Mentorlist"%>
<%@page import="com.DAO.MentorlistDao"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../All-components/All-cdn-links.jsp"%>

<style type="text/css">
.shadow {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0, 3);
}
</style>
</head>
<body>
	<%@include file="navbaradmin.jsp"%>
	<div class="container-fluid p-3">

		<div class="row">

			<div class="col-md-5 offset-md-4">

				<div class="card paint-card">

					<div class="card-body">

						<p class="fs-3 text-center">Add Mentor</p>
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-6">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="../addmentor" method="post">

							<div class="mb-3">
								<label class="form-label">Mentor FullName</label> <input
									type="text" name="fullname" placeholder="Enter mentor name"
									required class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mentor DOB</label> <input type="date"
									name="dob" placeholder="Enter mentor DOB" required
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mentor Qualification</label> <input
									type="text" name="qualification"
									placeholder="Enter mentor qualification" required
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mentor Subject</label> <select
									name="subject" required class="form-control">

									<option>---Select---</option>

									<%
									MentorlistDao dao = new MentorlistDao(DBConnect.getConn());
									List<Mentorlist> list = dao.getAllMentorlist();
									for (Mentorlist m : list) {
									%>
									<option><%=m.getMentorsub_name()%></option>
									<%
									}
									%>

									<option>---Select---</option>

								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Mentor Email</label> <input
									type="text" name="email" placeholder="Enter mentor email"
									required class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Mentor Mobile number</label> <input
									type="text" name="mobileno"
									placeholder="Enter mentor mobile number" required
									class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" name="password"
									placeholder="Enter mentor password" required
									class="form-control">
							</div>

							<button type="Submit" class="btn btn-primary col-12">Add
								Mentor</button>


						</form>


					</div>

				</div>

			</div>



		</div>


	</div>


</body>
</html>