package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MentorDao;
import com.DB.DBConnect;


@WebServlet("/deleteMentor")
public class DeleteMentor extends HttpServlet{

	/**
	 * 
	 */ 
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	
	MentorDao dao=new MentorDao(DBConnect.getConn());
	
	HttpSession session=req.getSession();
	
	if(dao.deleteMentor(id)) {
		session.setAttribute("sucMsg", "Mentor Deleted successfully");
	  resp.sendRedirect("Admin/Mentor_details.jsp");
	}else {
		session.setAttribute("errorMsg", "Server problem encountered");
		  resp.sendRedirect("Admin/Mentor_details.jsp");
	}
	

	}
	
	

}
