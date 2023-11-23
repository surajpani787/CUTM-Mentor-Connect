package com.userservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDao;
import com.DB.DBConnect;
import com.entity.Userentity;

/**
 * Servlet implementation class signup
 */
@WebServlet("/user_register")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public signup() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {

			String fullname = request.getParameter("fullname");
			String regd_no = request.getParameter("regd_no");
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			Userentity u = new Userentity(fullname, regd_no, email, password);

			UserDao dao = new UserDao(DBConnect.getConn());

			HttpSession session = request.getSession();

			boolean f = dao.regiter(u);

			if (f) {
				session.setAttribute("sucMsg", "Register Successfully!");
				response.sendRedirect("Signup.jsp");
			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				response.sendRedirect("Signup.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

//		doGet(request, response);
	}

//	private void getParameter(String string) {
//		// TODO Auto-generated method stub
//		
//	}

}
