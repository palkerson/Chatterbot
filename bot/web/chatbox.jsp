
<%--<%@include file="db.jsp" %>--%>

<%
try{
    %>
    <%--<%@include file="db.jsp" %>--%>
    <%
String user = session.getAttribute("user").toString();
%>

<h2>Room For ALL</h2>
 <a class="msg_container" href="logout.jsp">Log Out</a>
 <div class='msgs'>
  <%@include file="msgs.jsp" %>
 </div>
 <form id="msg_form">
  <input class="msg_input" name="msg" size="60" type="text"/>
  <button class="button_send">Send</button>
 </form>
<%
}
catch(Exception ee){

}
%>
