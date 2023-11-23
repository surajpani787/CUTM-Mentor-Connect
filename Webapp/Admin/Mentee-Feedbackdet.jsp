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
	<%@include file="navbaradmin.jsp"%>
	<div class="container-fluid p-3">

		<div class="row">


			<div class="col-md-12">

				<div class="card paint-card">

					<div class="card-body">

						<p class="fs-3 text-center">Mentee-Feedback</p>

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
									<th scope="col">Subject-Name</th>
									<th scope="col">Total classes held</th>
									<th scope="col">Total Attented</th>
									<th scope="col">Regd_no</th>
									<th scope="col">Feedback</th>
								</tr>
							</thead>
							<tbody>
								<%
								FeedbackDao dao2 = new FeedbackDao(DBConnect.getConn());
								List<Feedback> list2 = dao2.getAllFeedback();
								for (Feedback fd : list2) {
								%>
								<tr>
									<td><%=fd.getSubjectName()%></td>
									<td><%=fd.getTotalclassesheld() %></td>
									<td><%=fd.getTotalattented()%></td>
									<td><%=fd.getRegistration_no()%></td>
									<td><%=fd.getWriteyourfeedbackhere()%></td>

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