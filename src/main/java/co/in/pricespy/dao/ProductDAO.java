package co.in.pricespy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import co.in.pricespy.beans.ProductBean;

public class ProductDAO {

	public ArrayList<ProductBean> getProducts(int cid) throws ClassNotFoundException, SQLException {
		DataBaseConnection db = new DataBaseConnection();
		Connection connection = db.getConnection();
		String qry = "Select * from productdetailsdata where category=?";
		PreparedStatement ps = connection.prepareStatement(qry);
		ps.setInt(1, cid);
		ResultSet resultSet = ps.executeQuery();
		ProductBean bean = null;
		ArrayList<ProductBean> products = new ArrayList<ProductBean>();
		while (resultSet.next()) {
			bean = new ProductBean();
			bean.setCategoryId(cid);
			bean.setProductId(resultSet.getInt(1));
			bean.setProductName(resultSet.getString(2));
			bean.setFlipcartPrice(resultSet.getInt(3));
			bean.setAmzonPrice(resultSet.getInt(4));
			bean.setFlinks(resultSet.getString(6));
			bean.setAlinks(resultSet.getString(7));
			products.add(bean);
		}
		return products;
	}

//	public static void main(String[] args) throws ClassNotFoundException, SQLException {
////		getConnection();
//		ProductDAO obj = new ProductDAO();
//		ArrayList<ProductBean> products = obj.getProducts(1);
//		Iterator<ProductBean> iterator = products.iterator();
//		while (iterator.hasNext()) {
//			ProductBean productBean = (ProductBean) iterator.next();
//			System.out.println(productBean.getProductName());
//			
//		}
//	}
}
