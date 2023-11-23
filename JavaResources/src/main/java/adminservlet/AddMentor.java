 package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.connector.Response;

import com.DAO.MentorDao;
import com.DB.DBConnect;
import com.entity.Mentor;

@WebServlet("/addmentor")
public class AddMentor extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			String fullName=req.getParameter("fullname");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			String subjectt=req.getParameter("subject");
			String email=req.getParameter("email");
			String mobileno=req.getParameter("mobileno");
			String password=req.getParameter("password");
			
			Mentor m=new Mentor(fullName, dob, qualification, subjectt, email, mobileno, password);
			
			MentorDao dao=new MentorDao(DBConnect.getConn());
			
			HttpSession session=req.getSession();
			
			if(dao.registerMentor(m)) {
				session.setAttribute("sucMsg", "Mentor Added successfully");
			  resp.sendRedirect("Admin/Mentor.jsp");
			}else {
				session.setAttribute("errorMsg", "Server problem encountered");
				  resp.sendRedirect("Admin/Mentor.jsp");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
