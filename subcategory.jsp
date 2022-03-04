
<html>
<body>
<table border=>
<%@page import="java.sql.*"%>

<%	
		String a1=request.getParameter("n1");
		session.setAttribute("cat",a1);
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="select Distinct SubCategory from categories where Category=?";
			PreparedStatement st=c1.prepareStatement(x1);
			
			st.setString(1,a1);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
				%>
				
				<tr>
				<td onClick="it('<%=rs.getString(1)%>')">
				<br>
				<%=rs.getString(1)%>
				</td>
				</tr>
				
				
<%			}
			rs.close();
			c1.close();
			
%>
</table>
</body>
</html>