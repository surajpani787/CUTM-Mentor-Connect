package com.userservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MentorlistDao;
import com.DB.DBConnect;

@WebServlet("/addMentor")
public class AddMentorSub extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8877297956626302210L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String MentorSubName=req.getParameter("MentorSubName");
		
		MentorlistDao dao=new MentorlistDao(DBConnect.getConn());
		boolean  f=dao.addMentorlist(MentorSubName);
		
		HttpSession session=req.getSession();
		
		if (f) {
			session.setAttribute("sucMsg", "Subject addes successfully");
			resp.sendRedirect("Admin/Admin.jsp");
		} else {
			session.setAttribute("errorMsg", "Somethin wrong on server");
			resp.sendRedirect("Admin/Admin.jsp");
		}
		
	}
	
	
	

}
