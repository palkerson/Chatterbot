<%@include file="db.jsp" %>
<%
String user  = session.getAttribute("user").toString();
PreparedStatement ps = con.prepareStatement("delete from chatters where name=?");
ps.setString(1, user);
ps.executeUpdate();
session.invalidate();
response.sendRedirect("index.jsp");
%>

