package co.in.pawan.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.in.pricespy.beans.UserBean;
import co.in.pricespy.dao.UserDAO;

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserRegistration() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		UserDAO model = new UserDAO();
		UserBean bean = new UserBean();
		try {
			bean.setId(model.nextPk());
		} catch (ClassNotFoundException | SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		bean.setFname(request.getParameter("fname"));
		bean.setLname(request.getParameter("lname"));
		bean.setAddress(request.getParameter("address"));
		bean.setEmail(request.getParameter("uname"));
		bean.setPassword(request.getParameter("pwd"));
		bean.setMobileNumber(Long.parseLong(request.getParameter("mobile")));
		int i=0;
		try {
			i = model.addUser(bean);
			if (i > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp");
				rd.forward(request, response);
			}else {
				RequestDispatcher rd = request.getRequestDispatcher("Signup.jsp");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
