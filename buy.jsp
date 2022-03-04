
<%@page import="java.sql.*"%>

<html>
<body>
<%	
		String a3=request.getParameter("n3");
		session.setAttribute("item",a3);
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="select * from categories where Num=?";
			PreparedStatement st=c1.prepareStatement(x1);
			
			String a1=(String)session.getAttribute("cat");
			String a2=(String)session.getAttribute("subcat");
			
			//st.setString(1,a1);
			//st.setString(2,a2);
			st.setString(1,a3);
			
			out.println("<font size=+2 align=center>");
			out.println("<b>");
			out.println(a1+"--->"+a2+"--->"+a3);
			out.println("</b></font>");
			
			ResultSet rs=st.executeQuery();
			
				out.println("<table border=1");
				
				while(rs.next())
				{
					out.println("<tr>");
					out.println("<td>"+"<img src='"+rs.getString("Image")+"' height=400 width=400>");
					
					
						out.println("<td  valign=top><table border=1>");
						out.println("<tr>");
						out.println("<td>Num <td>"+rs.getString("Num"));
						session.setAttribute("numb",rs.getString("Num"));
						out.println("<tr>");
						out.println("<td>Item<td>"+rs.getString("Item"));
						out.println("<tr>");
						out.println("<td>Description<td>"+rs.getString("Description"));
						out.println("<tr>");
						out.println("<td>MRP<td>"+rs.getString("MRP"));
						out.println("<tr>");
						out.println("<td>Discount<td>"+rs.getString("Discount"));
						out.println("<tr>");
						out.println("<td>Dis<td>"+rs.getString("Dis"));
						out.println("<tr>");
						out.println("<td>Price<td>"+rs.getString("Price"));
						session.setAttribute("price",rs.getString("Price"));
						out.println("</table>");
						
						out.println("<br>");
						
						out.println("<table border=1 align=center>");
						out.println("<tr>");
						%>
						
						<td bgcolor=white align=center width=100 onclick="ac('<%=rs.getString(1)%>')"> Add to Cart
						<%
						out.println("<td bgcolor=white align=center width=100> Instant Buy");
						out.println("</table>");
									
				}
				out.println("</table>");
			
			
			rs.close();
			c1.close();
			
%>
</body>
</html>