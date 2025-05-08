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

import co.in.pricespy.beans.ProductBean;
import co.in.pricespy.dao.ProductDAO;

/**
 * Servlet implementation class GetProductData
 */
@WebServlet("/GetProductData")
public class GetProductData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public GetProductData() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		int categoryid = Integer.parseInt(request.getParameter("cid"));
		ProductDAO dao = new ProductDAO();
		try {
			ArrayList<ProductBean> products = dao.getProducts(categoryid);
			request.setAttribute("Products", products);
			RequestDispatcher requestDispatcher = null;
			requestDispatcher = request.getRequestDispatcher("ProductDetails.jsp");
			requestDispatcher.forward(request, response);

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
