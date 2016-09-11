

<%--<%@include file="db.jsp" %>--%>
<%@include file="login.jsp" %>

<!DOCTYPE html>
<html>
 <head>
  <script src="//code.jquery.com/jquery-latest.js"></script>
  <script src="chat.js"></script>
  <link href="chat.css" rel="stylesheet"/>
  <title>:: CHATTERBOT ::</title>
 </head>
 <body>
  <div id="content" style="margin-top:10px;height:100%;">
   <center><h1>Chatterbot Project - Master Thesis</h1></center>
   <div class="chat">
    <div class="users">
        <%@include file="users.jsp" %>  
     
    </div>
    <div class="chatbox">
     <%
     try{
     String ussser = session.getAttribute("user").toString();
     %>
     <%@include file="chatbox.jsp" %>
        <%
     }
     catch(Exception e){
     %>
     <%@include file="login.jsp" %>
        <%
     }finally{}
     %>
      
    </div>
   </div>
  </div>
 </body>
</html>
