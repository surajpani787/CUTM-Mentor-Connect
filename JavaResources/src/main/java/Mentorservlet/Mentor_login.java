package com.Mentor_servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.MentorDao;
import com.DB.DBConnect;
import com.entity.Mentor;

@WebServlet("/mentorLogin")
public class Mentor_login extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		MentorDao dao = new MentorDao(DBConnect.getConn());
		Mentor mentor=dao.login(email, password);

		if (mentor != null) {
			session.setAttribute("mentorObj", mentor);
			resp.sendRedirect("Mentor/MentorDash.jsp");
		} else {
			session.setAttribute("errorMsg", "Invalid email_ID or password");
			resp.sendRedirect("Signin.jsp");
		}

	}

}
