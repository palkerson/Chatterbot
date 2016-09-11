
<%
try{
    %>
<%@include file="db.jsp" %>
<%
String user = session.getAttribute("user").toString();
Statement sstt1 = con.createStatement();
ResultSet rsd1 = sstt1.executeQuery("SELECT name FROM chatters WHERE name='"+user+"'");
if(rsd1.next()){
    PreparedStatement psy = con.prepareStatement("UPDATE chatters SET seen=NOW() WHERE name=?");
    psy.setString(1, user);
    psy.executeUpdate();
}
else{
    PreparedStatement psy = con.prepareStatement("INSERT INTO chatters (name,seen) VALUES (?,NOW())");
    psy.setString(1, user);
    psy.executeUpdate();
}
}
catch(Exception exx){

}



%>

