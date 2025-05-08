package co.in.pricespy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import co.in.pricespy.beans.CartBean;
import co.in.pricespy.beans.ProductBean;
import co.in.pricespy.beans.UserBean;

public class CartDao {
	private static DataBaseConnection db = new DataBaseConnection();

	public int nextPk() throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn.prepareStatement("Select max(cid) from cartdetails");
		ResultSet rs = ps.executeQuery();
		int pk = 0;
		if (rs.next()) {
			pk = rs.getInt(1);
		}
		ps.close();
		conn.close();
		return pk + 1;

	}

	public boolean addToCart(int pid, String uemail) throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn.prepareStatement("Insert into cartDetails(cid,product_id,User_email) values(?,?,?)");
		ps.setInt(1, nextPk());
		ps.setInt(2, pid);
		ps.setString(3, uemail);

		int n = ps.executeUpdate();
		if (n > 0) {
			return true;
		}
		conn.close();
		return false;

	}

	public ArrayList<ProductBean> getAllProducts(String uemail) throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn.prepareStatement("select * from productdetailsdata where product_id In(select cartdetails.product_id from cartdetails where User_email=?) ");
		ps.setString(1, uemail);
		ProductBean bean = null;
		ArrayList<ProductBean> collection = new ArrayList<ProductBean>();
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			bean = new ProductBean();
			bean.setProductId(rs.getInt(1));
			bean.setProductName(rs.getString(2));
			bean.setFlipcartPrice(rs.getInt(3));
			bean.setAmzonPrice(rs.getInt(4));
			bean.setCategoryId(rs.getInt(5));
			bean.setFlinks(rs.getString(6));
			bean.setAlinks(rs.getString(7));
			collection.add(bean);
		}
		return collection;
	}
	public boolean deleteFromCart(int pid) throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn.prepareStatement("Delete  from cartDetails where product_id=?");
		
		ps.setInt(1, pid);
		

		int n = ps.executeUpdate();
		if (n ==1) {
			return true;
		}
		conn.close();
		return false;

	}
}
