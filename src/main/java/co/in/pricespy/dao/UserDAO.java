package co.in.pricespy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import co.in.pricespy.beans.UserBean;

public class UserDAO {
	private static DataBaseConnection db = new DataBaseConnection();

	public int nextPk() throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn.prepareStatement("Select max(id) from Userdata");
		ResultSet rs = ps.executeQuery();
		int pk = 0;
		if (rs.next()) {
			pk = rs.getInt(1);
		}
		ps.close();
		conn.close();
		return pk + 1;

	}

	public int addUser(UserBean bean) throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn
				.prepareStatement("Insert into UserData(id, fname, lname,address, email, password, mobileNumber) values"
						+ "(?,?,?,?,?,?,?)");
		ps.setInt(1, bean.getId());
		ps.setString(2, bean.getFname());
		ps.setString(3, bean.getLname());
		ps.setString(4, bean.getAddress());
		ps.setString(5, bean.getEmail());
		ps.setString(6, bean.getPassword());
		ps.setLong(7, bean.getMobileNumber());

		int n = ps.executeUpdate();
		return n;

	}

	public String login(String email, String password) throws ClassNotFoundException, SQLException {
		Connection conn = db.getConnection();
		PreparedStatement ps = conn.prepareStatement("select fname,lname from UserData where email=? and password=? ");
		ps.setString(1, email);
		ps.setString(2, password);
		ResultSet resultSet = ps.executeQuery();
		String fname = null;
		String lname = null;
		String name = null;
		if (resultSet.next()) {
			fname = resultSet.getString(1);
			lname = resultSet.getString(2);
			name = fname + " " + lname;
		} else {
			return null;
		}
		
		return name;
	}
}
