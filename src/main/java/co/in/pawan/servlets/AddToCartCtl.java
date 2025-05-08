package co.in.pawan.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.in.pricespy.dao.CartDao;

/**
 * Servlet implementation class AddToCartCtl
 */
@WebServlet("/AddToCartCtl")
public class AddToCartCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddToCartCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pid = Integer.parseInt(request.getParameter("pid"));
		System.out.println(pid);
		String email = request.getParameter("uid");
		
		CartDao dao = new CartDao();
		try {
			boolean n = dao.addToCart(pid, email);
			if (n) {
				RequestDispatcher rd = request.getRequestDispatcher("GetCartListCtl");
				request.setAttribute("Uemail", email);
				rd.forward(request, response);
			} else {
				response.sendRedirect("index.jsp");
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
