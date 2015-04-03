<html>
<form action="authenticate" method="post">  
Email:<input type="text" name="userid"/><br/><br/>  
Password:<input type="password" name="userpass"/><br/><br/>  
<input type="submit" value="login"/>  
</form>
<%
  String msg=(String)request.getAttribute("err");
  if(msg!=null){
%>
<p1><%=msg%></p1>
<%}%>

</html>  