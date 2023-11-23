<%@page import="com.entity.Userentity"%>
<%@page import="com.DAO.UserDao"%>
<%@page import="com.DAO.FeedbackDao"%>
<%@page import="com.entity.Feedback"%>
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
	<%@include file="navbarmentor.jsp"%>
	<div class="container-fluid p-3">

		<div class="row">


			<div class="col-md-12">

				<div class="card paint-card">

					<div class="card-body">

						<p class="fs-3 text-center mb-3 text-decoration-underline">Mentee-Details</p>
						<div class="col-md-6">
							<input type="search" class="form-control" id="inputcname4"
								placeholder="search by regd_no..." required name="details">
						</div>

						<c:if test="${not empty sucMsg}">
							<p class="text-center text-success fs-6">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-3">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<table class="table mt-3">
							<thead>
								<tr>
									<th scope="col">Student-Name</th>
									<th scope="col">Regd_no</th>
									<th scope="col">Branch</th>
									<th scope="col">Stud-email</th>
									<th scope="col">Stud_No</th>
									<th scope="col">Parent-Name</th>
									<th scope="col">Parent_No</th>
									<th scope="col">Prent_email</th>
								</tr>
							</thead>
							<tbody>
								<%
								UserDao dao2 = new UserDao(DBConnect.getConn());
								List<Userentity> list2 = dao2.getAllUserList();
								for (Userentity ud : list2) {
								%>
								<tr>
									<td><%=ud.getFullName()%></td>
									<td><%=ud.getRegd_no()%></td>
									<td><%=ud.getBranch()%></td>
									<td><%=ud.getStud_email()%></td>
									<td><%=ud.getStud_no()%></td>
									<td><%=ud.getParent_name()%></td>
									<td><%=ud.getParent_no()%></td>
									<td><%=ud.getStud_email()%></td>

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