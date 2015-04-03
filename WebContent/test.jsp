<%@page import="com.timetable.DataModels.Timeslots"%>
<%@page import="com.timetable.DataModels.Subject"%>
<%@page import="com.timetable.DataModels.TutGroup"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.timetable.Database.*" %>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<body>
<%
InfoPopulator.populateTimeSlots();
ArrayList<Timeslots> grpList=InfoPopulator.timeSlotList;
for(Timeslots t:grpList){
%>
<h1> <%=t.getStart_time() +"   " + t.getEnd_time()%> </h1>
<% } %>

</body>
</html>