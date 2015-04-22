package com.timetable.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.timetable.DataModels.Subject;
import com.timetable.Database.DBHandler;

/**
 * Servlet implementation class EntryForm_AddEntry
 */
@WebServlet("/entry")
public class EntryForm_AddEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		PrintWriter out=response.getWriter();
	    String tid=request.getParameter("teacher");
	    int rid=Integer.parseInt(request.getParameter("room"));
	    int did=Integer.parseInt(request.getParameter("day"));
	    int time_id=Integer.parseInt(request.getParameter("slot"));
	    String sub_id=request.getParameter("subject");
	    int group_id=Integer.parseInt(request.getParameter("groupstart"));
	    int ltp=Integer.parseInt(request.getParameter("ltp"));
		Connection conn = DBHandler.getConnection();
		String insertTableSQL = "INSERT INTO MASTER"
				+ "(TID,RID,DID,TIME_ID,SUB_ID,GROUP_ID,LTP,KEY) VALUES"
				+ "(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(insertTableSQL);
		    ps.setString(1, tid);
		    ps.setInt(2, rid);
		    ps.setInt(3, did);
		    ps.setInt(4, time_id);
		    ps.setString(5, sub_id);
		    ps.setInt(6,group_id);
		    ps.setInt(7 ,ltp);
		    ps.setTimestamp(8, getCurrentTimeStamp());
			ps.executeUpdate();
			
		    
		} catch (SQLException e) {
			out.print(e.getMessage());
			out.print("failure");
			
		}

	
	out.print("success");
	
	
	
	}
	private static java.sql.Timestamp getCurrentTimeStamp() {
		 
		java.util.Date today = new java.util.Date();
		return new java.sql.Timestamp(today.getTime());
 
	}
 
	

}
