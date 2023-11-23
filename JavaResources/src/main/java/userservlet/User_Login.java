
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

@WebServlet("/userLogin")
public class User_Login extends HttpServlet {

	private static final long serialVersionUID = 1499426503524963995L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		user login email passsword valdation code section

		String stud_email = req.getParameter("stud_email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		UserDao dao = new UserDao(DBConnect.getConn());
		Userentity userentity = dao.login(stud_email, password);

		if (userentity != null) {
			session.setAttribute("userObj", userentity);
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMsg", "Invalid email_ID or password");
			resp.sendRedirect("Signin.jsp");
		}

	}

}
