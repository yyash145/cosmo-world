
<table border=1>

<%@page import="java.sql.*"%>

<%	
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="select Distinct Category from categories";
			PreparedStatement st=c1.prepareStatement(x1);
			ResultSet rs=st.executeQuery();
			while(rs.next())
			{
			%>
				<tr>
				<td onClick="sc('<%=rs.getString(1)%>')">
				<%=rs.getString(1)%>
				</td>
				
			<%
			}
			rs.close();
			c1.close();
			
%>
</table>

