package co.in.pawan.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.in.pricespy.beans.UserBean;
import co.in.pricespy.dao.UserDAO;

/**
 * Servlet implementation class LoginCtl
 */
@WebServlet("/LoginCtl")
public class LoginCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		UserDAO model = new UserDAO();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		try {
			String name = model.login(email, pwd);
			if (name != null) {
				System.out.println(name);
				HttpSession session = request.getSession();
				session.setAttribute("Name", name);
				session.setAttribute("UID",email );
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp");
				request.setAttribute("error", "Please try Again");
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
