package com.myweb;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.myweb.dao.LoginDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
       
    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	String username = req.getParameter("uname");
	String password = req.getParameter("pass");
	
	
	LoginDao logindao = new LoginDao();
	
	if(logindao.checkCredentials(username, password))
	{
		HttpSession session = req.getSession();
		session.setAttribute("username", username);
		
		resp.sendRedirect("welcome.jsp");
	}
	else
		resp.sendRedirect("login.jsp");
		
		
	}
	
}
