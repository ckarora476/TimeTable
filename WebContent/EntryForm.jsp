<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
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
<!-- jQuery -->
<script src="js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<link
	href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0-rc.2/css/select2.min.css"
	rel="stylesheet" />
<script
	src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0-rc.2/js/select2.min.js"></script>


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
			<form role="form" style="background-color: #FFFFFF" action="entry"
				method="post">
				<div>
					<label>Teacher</label> <select name="teacher" class="form-control"
						id="teachers">
						<option></option>
						<%
							ArrayList<Teacher> teacherList = (ArrayList<Teacher>) session
									.getAttribute("teacherList");
							for (Teacher t : teacherList) {
						%>
						<option value=<%=t.getId()%>><%=t.getName() + "(" + t.getId() + ")"%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Subject</label> <select class="form-control" id="subjects"
						name="subject">
						<option></option>
						<%
							ArrayList<Subject> subList = (ArrayList<Subject>) session
									.getAttribute("subjectList");

							for (Subject s : subList) {
						%>
						<option value=<%=s.getSubject_id()%>><%=s.getSubject_id() + ":" + s.getSubject_name()%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Time</label> <select class="form-control" id="timeslots"
						name="slot">
						<option></option>
						<%
							ArrayList<Timeslots> timeSlotList = (ArrayList<Timeslots>) session
									.getAttribute("timeSlotList");

							for (Timeslots t : timeSlotList) {
						%>
						<option value=<%=t.getId()%>><%=t.getStart_time() + ":00" + "-" + t.getEnd_time()
						+ ":00"%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Day</label> <select class="form-control" id="day" name="day">
						<option></option>
						<%
							for (Day d : Day.values()) {
						%>
						<option value=<%=d.id%>><%=d%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Room Number</label> <select class="form-control" id="room"
						name="room">
						<option></option>
						<%
							ArrayList<Room> roomList = (ArrayList<Room>) session
									.getAttribute("roomList");

							for (Room r : roomList) {
						%>
						<option value=<%=r.getId()%>><%=r.getRoom_no()%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Group Start</label> <select class="form-control"
						id="tutgroupst" name="groupstart">
						<option></option>
						<%
							ArrayList<TutGroup> tutGroupList = (ArrayList<TutGroup>) session
									.getAttribute("tutGroupList");

							for (TutGroup tut : tutGroupList) {
						%>
						<option value=<%=tut.getId()%>><%=tut.getName()%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">
					<label>Group End</label> <select class="form-control"
						id="tutgroupend" name="groupend">
						<option></option>
						<%
							for (TutGroup tut : tutGroupList) {
						%>
						<option value=<%=tut.getId()%>><%=tut.getName()%></option>
						<%
							}
						%>
					</select>
				</div>
				<div class="form-group">

					<label>Lecture/Tutorial/Practical</label> <select
						class="form-control" id="LTP" name="ltp">
						<option></option>
						<%
							for (Ltp a : Ltp.values()) {
						%>
						<option value=<%=a.id%>><%=a%></option>
						<%
							}
						%>
					</select>
				</div>
				<button type="submit" class="btn btn-primary">Another Entry</button>
				<button type="submit" class="btn btn-success">Submit Button</button>
				<button type="reset" class="btn btn-danger">Reset Button</button>

			</form>
		</div>
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->
	<script src="js/EntryForm.js"></script>

</body>

</html>
