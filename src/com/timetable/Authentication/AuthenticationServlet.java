package com.timetable.Authentication;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;

import com.timetable.Database.DBHandler;

/**
 * Servlet implementation class AuthenticationServlet
 */
@WebServlet("/authenticate")
public class AuthenticationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		String username=request.getParameter("userid");
		String password=request.getParameter("userpass");
		String query="SELECT PASSWORD,ROLE FROM AUTH WHERE USER_ID=?";
		if(username!=null && password!=null)
		{
			Connection conn=DBHandler.getConnection();
			
			PreparedStatement psPreparedStatement=conn.prepareStatement(Query);
					
		}
		
		
		
		
	}

}
