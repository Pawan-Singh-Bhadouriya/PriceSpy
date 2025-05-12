package co.in.pricespy.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		// load the Driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		// getConnection
//		String url = "jdbc:mysql://localhost:3306/priceSpy";
//		String user = "root";
//		String pwd = "root";
		
		
		String url = "jdbc:mysql://mysql-7904722-pawansingh2m4-5e71.h.aivencloud.com:19798/defaultdb?sslMode=REQUIRED";
		String user = "avnadmin";
		String pwd = "AVNS_xebAMf83jKk537843SD";


		
		Connection conn = DriverManager.getConnection(url, user, pwd);
		System.out.println("Connection done");
		return conn;
	}
}
