
<font color=green size=+6><b>Welcome to Instant buy<br>Just click on Item you  like</font>																		

<%@ page import="java.sql.*"%>


<%
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","yogesh");
String x1="select * from items1";
PreparedStatement st=c1.prepareStatement(x1);

ResultSet rs=st.executeQuery();

out.println("<table border=1 bgcolor=skyblue>");
out.println("<tr>");
out.println("<td>");
out.println("ItemNo");
out.println("</td>");
out.println("<td>");
out.println("ItemName");
out.println("</td>");
out.println("<td>");
out.println("Category");
out.println("</td>");
out.println("<td>");
out.println("SubCategory");
out.println("</td>");
out.println("<td>");
out.println("Description");
out.println("</td>");
out.println("<td>");
out.println("Price");
out.println("</td>");
out.println("<td>");
out.println("Image");
out.println("</td>");
//out.println("</tr>");

while(rs.next())
{
out.println("<br>");
out.println("<td onclick=boiy('"+rs.getString("no")+"')>");
out.println("ItemNo.="+rs.getString("no"));
out.println("<br>");
out.println("</td>");
out.println("<br>");
out.println("ItemName="+rs.getString("name"));
out.println("<br>");
out.println("Category="+rs.getString("category"));
out.println("<br>");
out.println("<font align=right>");
out.println("SubCategory="+rs.getString("sub_category"));
out.println("<br>");
out.println("</font>");
out.println("Description="+rs.getString("description"));
out.println("<br>");
out.println("Price is RS."+rs.getString("price"));
out.println("<br>");
out.println("<center>");
out.println("<img src='"+rs.getString("image")+".jpg'>");
out.println("<br>");
out.println("</center>");

}
rs.close();
c1.close();

%>


</table>

