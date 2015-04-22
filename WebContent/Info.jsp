<%@page import="com.timetable.Database.*" %>

<% InfoPopulator info=new InfoPopulator();
   info.populateAll();
   session.setAttribute("teacherList", info.teacherList);
   session.setAttribute("subjectList", info.subList);
   session.setAttribute("roomList",info.roomList);
   session.setAttribute("timeSlotList",info.timeSlotList);
   session.setAttribute("tutGroupList", info.tutGroupList);
%>

<jsp:forward page="UserHome.jsp"></jsp:forward>