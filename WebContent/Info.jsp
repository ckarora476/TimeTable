<%@page import="com.timetable.Database.*" %>

<% InfoPopulator info=new InfoPopulator();
   info.populateAll();
   String name=info.getTeacherName((String)session.getAttribute("tid"));
   session.setAttribute("teacherList", info.teacherList);
   session.setAttribute("subjectList", info.subList);
   session.setAttribute("roomList",info.roomList);
   session.setAttribute("timeSlotList",info.timeSlotList);
   session.setAttribute("tutGroupList", info.tutGroupList);
   session.setAttribute("teacherName", name);
     
%>

<jsp:forward page="UserHome.jsp"></jsp:forward>