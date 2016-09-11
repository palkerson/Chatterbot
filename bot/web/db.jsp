<%@page import="java.sql.*"%>
<%
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chattest","root","mysql");

%>
