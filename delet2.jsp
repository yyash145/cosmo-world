<%@page import="java.sql.*"%>

<html>
<body>
<%	
			String a1=request.getParameter("n8");
		
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="delete from cart where sn=?";
			PreparedStatement st=c1.prepareStatement(x1);
			
			st.setString(1,a1);
			
			//ResultSet rs=st.executeQuery();
			st.executeUpdate();
			
			c1.close();
%>
</body>
</html>