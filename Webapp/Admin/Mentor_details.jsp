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


			<div class="col-md-12">

				<div class="card paint-card">

					<div class="card-body">

						<p class="fs-3 text-center">Mentor Details</p>
						
						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-6">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full_Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Subject</th>
									<th scope="col">Email</th>
									<th scope="col">Mobile-No</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								MentorDao dao2 = new MentorDao(DBConnect.getConn());
								List<Mentor> list2 = dao2.getAllMentor();
								for (Mentor mt : list2) {
								%>
								<tr>
									<td><%=mt.getFullName()%></td>
									<td><%=mt.getDob()%></td>
									<td><%=mt.getQualification()%></td>
									<td><%=mt.getMentorlist()%></td>
									<td><%=mt.getEmail()%></td>
									<td><%=mt.getMobileno()%></td>
									<td><a href="Edit_mentor.jsp?id=<%=mt.getId() %>" class="btn btn-primary">Edit</a>
										<a href="../deleteMentor?id=<%=mt.getId()%>" class="btn btn-danger">Delete </a></td>
								</tr>

								<%
								}
								%>


							</tbody>
						</table>


					</div>

				</div>

			</div>


		</div>


	</div>


</body>
</html>