package co.in.pawan.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.in.pricespy.beans.ProductBean;
import co.in.pricespy.dao.CartDao;

/**
 * Servlet implementation class GetCartListCtl
 */
@WebServlet("/GetCartListCtl")
public class GetCartListCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetCartListCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uemail = (String)(request.getAttribute("Uemail"));
		CartDao dao = new CartDao();
//		HttpSession session= request.getSession();
		try {
			ArrayList<ProductBean> allProducts = dao.getAllProducts(uemail);
			if (allProducts != null) {
				RequestDispatcher rd = request.getRequestDispatcher("GetAllProductsOfcart.jsp");
				request.setAttribute("Products", allProducts);
//				session.setAttribute("uemail", uemail);
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
