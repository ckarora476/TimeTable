<!DOCTYPE html>
<%@page import="com.timetable.DataModels.Ltp"%>
<%@page import="com.timetable.DataModels.Day"%>
<%@page import="com.timetable.DataModels.TutGroup"%>
<%@page import="com.timetable.DataModels.Room"%>
<%@page import="com.timetable.DataModels.Timeslots"%>
<%@page import="oracle.net.aso.s"%>
<%@page import="com.timetable.DataModels.Subject"%>
<%@page import="com.timetable.Database.InfoPopulator"%>
<%@page import="com.timetable.DataModels.Teacher"%>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin - Bootstrap Admin Template</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/userhome.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="bootstrap/css/plugins/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<div id="wrapper">
		<%@ include file="Header.jsp"%>
		<%@ include file="Navbar.jsp"%>

		<div id="page-wrapper">


			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row" style="background-color: #FFFFFF">
					<div class="col-lg-12">
						<h1 class="page-header">Table Data Entry</h1>

					</div>
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container-fluid -->
			<form role="form" style="background-color: #FFFFFF">
				<div class="form-group">
					<label>Teacher</label> <select class="form-control">
						<% 
                                       for(Teacher t:InfoPopulator.teacherList)
                                       { 
                                    %>
						<option><%=t.getName()+"("+t.getId()+")" %></option>
						<%} %>
					</select>
				</div>
				<div class="form-group">
					<label>Subject</label> <select class="form-control">
						<%
                                      for(Subject s:InfoPopulator.subList)
                                      {  
                                   %>
						<option><%=s.getSubject_id()+":"+s.getSubject_name()%></option>
						<%}%>
					</select>
				</div>
				<div class="form-group">
					<label>Time</label> <select class="form-control">
						<% 
                                    for(Timeslots t:InfoPopulator.timeSlotList)
                                    {
                                %>
						<option><%=t.getStart_time()+":00"+"-"+t.getEnd_time()+":00" %></option>
						<%} %>
					</select>
				</div>
				<div class="form-group">
					<label>Day</label> <select class="form-control">
						<% 
                                     for(Day d:Day.values())
                                     {
                                   %>
						<option><%=d%></option>
						<%} %>
					</select>
				</div>
				<div class="form-group">
					<label>Room Number</label> <select class="form-control">
						<%
                                       for(Room r:InfoPopulator.roomList)
                                       {	   
                                    %>
						<option><%=r.getRoom_no()%></option>
						<%} %>
					</select>
				</div>
				<div class="form-group">
					<label>Group Start</label> <select class="form-control">
						<%
                                      for(TutGroup tut:InfoPopulator.tutGroupList)
                                      { 
                                   %>
						<option><%=tut.getName()%></option>
						<%}%>
					</select>
				</div>
				<div class="form-group">
					<label>Group End</label> <select class="form-control">
						<%
                                      for(TutGroup tut:InfoPopulator.tutGroupList)
                                      { 
                                   %>
						<option><%=tut.getName()%></option>
						<%}%>
					</select>
				</div>
				<div class="form-group">
					<label>Lecture/Tutorial/Practical</label> <select
						class="form-control">
						<%
                                   	for(Ltp a:Ltp.values())
                                   	{
                                   %>
						<option><%=a%></option>
						<%} %>
					</select>
				</div>
				<button type="submit" class="btn btn-primary">Another
					Entry</button>
				<button type="submit" class="btn btn-success">Submit
					Button</button>
				<button type="reset" class="btn btn-danger">Reset Button</button>

			</form>
		</div>

	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
