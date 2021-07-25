package com.myweb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

public class LoginDao {

	String sql = "select * from user_login where u_name=? and u_pass = ?";
	String url = "jdbc:mysql://localhost:3306/jspweb";
	String mysqluser = "root";
	String mysqlpass = "";
	
	public boolean checkCredentials(String uname,String pass)
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, mysqluser, mysqlpass);
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, uname);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			
			if(rs.next())
			{
				return true;
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return false;
	}
	
	
}
