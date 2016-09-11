<%@page import="java.sql.*"%>
<%@page import="com.parse.tagTextToFile"%>

<%@include file="../db.jsp" %>

          <%
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery("select * from `reviews`");
          %>
      
      
      <div class="container">
          <table class="table table-bordered">
              <thead>
                  <tr><td>#id</td><td>Chat Responses</td><td>Tagger</td></tr>
              </thead>
              <tbody>
                  <%
                  while(rs.next()){
                      String rev = rs.getString(1);
                      String id = rs.getString(3);
                      tagTextToFile tf = new tagTextToFile();
                      String tg = tf.tags(rev);
//                      out.println(tg);
                      String tp[] = tg.split("\\s");
                      
                      for(String s:tp){
                          if(s.contains("_NN")){
                              s = s.replaceAll("_NNS", "");
                              s = s.replaceAll("_NNP", "");
                              s = s.replaceAll("_NNPS", "");
                              s = s.replaceAll("_NN", "");
                          PreparedStatement ps = con.prepareStatement("insert into `noun` values(?,?)");
                          ps.setInt(1,Integer.parseInt(id));
                          ps.setString(2,s);
                          ps.executeUpdate();
                          
                          }
                          else if(s.contains("_JJ")){
                          s = s.replaceAll("_JJ", "");
                          PreparedStatement ps = con.prepareStatement("insert into `adjec` values(?,?)");
                          ps.setInt(1,Integer.parseInt(id));
                          ps.setString(2,s);
                          ps.executeUpdate();
                          
                          }
                          else if(s.contains("_VB")){
                          //s = s.replaceAll("_VB", "");
                          String hg[] = s.split("_");
                          PreparedStatement ps = con.prepareStatement("insert into `verb` values(?,?)");
                          ps.setInt(1,Integer.parseInt(id));
                          ps.setString(2,hg[0]);
                          ps.executeUpdate();
                          
                          }
                          
                          
                          else{}
                      }
                      PreparedStatement ps = con.prepareStatement("UPDATE `reviews` SET `scor`=? WHERE `id`=?");
                      ps.setString(1,"");
                      ps.setString(2,id);
                      ps.executeUpdate();
                  %>
                  <tr><td><%=id%></td><td><%=rev%></td><td><%=tg%></td></tr>
                  <% } %>
              </tbody>
          </table>
      </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="bootstrap/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>