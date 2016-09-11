<%@include file="../db.jsp" %>
<%

Statement st = con.createStatement();
int i = 0;
int p = 0;
ResultSet rs = st.executeQuery("select `vall` from `basicdb`");
while(rs.next()){
String tmp = rs.getString("vall");
//out.println(tmp);

if(!tmp.isEmpty()){
String str[] = tmp.split("\\.");
for(String t:str){
out.println("<li>"+t+"</li>");
PreparedStatement ps  = con.prepareStatement("INSERT INTO `reviews`(`id`, `rv`,`scor`) VALUES (?,?,?)");
    ps.setInt(1,0);
    ps.setString(2,t);
    ps.setString(3,"0.00");
    ps.executeUpdate();
    p++;
}
}

//PreparedStatement pps = con.prepareStatement("delete from `basicdb` where `vall`='"+tmp+"' limit 1");
//pps.executeUpdate();
i++;
}
out.println(i+" Paragraphs processed as "+p+" sentences");
%>