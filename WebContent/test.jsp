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
	DBHandler sub=new DBHandler();  
ArrayList<String> list=sub.getSubjectList();
   for(String s:list){
%>
<h1> <%=s%> </h1>

<% } %>

</body>
</html>