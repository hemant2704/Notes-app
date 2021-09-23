package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn() {
		try {
			if(conn==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/notes_app","root","Msdhoni07@");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
