<%--<%@include file="db.jsp" %>--%>
<%
 try{
     %>
<%@include file="db.jsp" %>
<%
Statement stt = con.createStatement();
ResultSet ss = stt.executeQuery("select * from messages");
while(ss.next()){
out.println("<div class='msg' title='"+ss.getString("posted")+"'><span class='name'>"+ss.getString("name")+"</span> : <span class='msgc'>"+ss.getString("msg")+"</span></div>");
}
//try{
String uuser = session.getAttribute("user").toString();
//}
//catch(Exception nfg){
if(uuser.isEmpty()){
out.println("<script>window.location.reload()</script>");
}
 }catch(Exception fsdids){}
%>

