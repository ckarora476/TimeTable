package com.timetable.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.timetable.DataModels.Room;
import com.timetable.DataModels.Subject;
import com.timetable.DataModels.Teachers;
import com.timetable.DataModels.Timeslots;
import com.timetable.DataModels.TutGroups;

public class InfoPopulator {
	
	static ArrayList<Subject> subList;
	static ArrayList<Timeslots> timeSlotList;
	static ArrayList<Room> roomList;
	static ArrayList<Teachers> teacherList;
	static ArrayList<TutGroups> tutGroupList;
    
	public static void populateSubjects()
	{
		Connection conn=DBHandler.getConnection();
		String query="SELECT * FROM SUBJECT_INFO";
		try {
			PreparedStatement ps=conn.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			Subject sub = null;
			while(rs.next())
			{
				sub.setSubject_id(rs.getString("SUBJECT_ID"));
				sub.setSubject_name(rs.getString("SUBJECT_NAME"));
				sub.setL_credits(rs.getDouble("L_CR"));
				sub.setP_credits(rs.getDouble("P_CR"));
				sub.setT_credits(rs.getDouble("T_CR"));
				subList.add(sub);				
			}
			
		} catch (SQLException e) {
		   
		}
				
	}
}
