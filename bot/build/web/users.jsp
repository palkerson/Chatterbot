<%
try{
%>
<%@include file="db.jsp"%> 

<%
out.println("<h2><center>Users</center></h2> "); // Header of User table 
Statement st1 = con.createStatement(); 
ResultSet rs11 = st1.executeQuery("SELECT name FROM chatters");
while(rs11.next()){
out.println("<div class='user'>"+rs11.getString("name")+"</div>");
}
}
catch(Exception erjkl){}
%>
