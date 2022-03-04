
<%@page import="java.sql.*"%>

<html>
<body>
<%	
		String a2=request.getParameter("n2");
		session.setAttribute("subcat",a2);
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="select * from categories where Category=? and SubCategory=? ";
			PreparedStatement st=c1.prepareStatement(x1);
			
			String a1=(String)session.getAttribute("cat");
			
			st.setString(1,a1);
			st.setString(2,a2);
			ResultSet rs=st.executeQuery();
			
			out.println("<font size=+2 align=center>");
			out.println("<b>");
			out.println("<h1 onclick='sub_category("+a1+")'>"+a1+"</h1>--->"+a2);  // <!--edited
			out.println("</b></font>");
			
				out.println("<table border=1 width=100% align=center>");
				out.println("<tr>");
				out.println("<th> Name <th> Photo <th> Price <th> Description</th>");
				while(rs.next())
				{
					%>
					
					<tr>
				<td onClick="cs('<%=rs.getString(1)%>')">
				
				<%=rs.getString(4)%>
				</td>
					
					<%
					//out.println("<tr>");
					//out.println("<td>"+rs.getString(4));
					out.println("<td>"+"<img src='"+rs.getString(6)+"' length=50 width=80>");
					out.println("<td>"+rs.getString(10));
					out.println("<td>"+rs.getString(5));
				}	
				
				out.println("</table>");
			
			
			rs.close();
			c1.close();
			
%>
</body>
</html>