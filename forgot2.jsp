<%@page import="java.sql.*"%>

<html>
<body>
<%
		String n1=request.getParameter("Name");
		String n3=request.getParameter("Pass");
		
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="update customer set Password=? where uid=? or Mobile=?";
			PreparedStatement st=c1.prepareStatement(x1);
			st.setString(1,n3);
			st.setString(2,n1);
			st.setString(3,n1);
			st.executeUpdate();
			c1.close();
			out.println("You are now Sign in");
%>
</body>
</html>
<a href=signin.jsp> Sign In again</a>