<%@page import="java.sql.*"%>

<html>
<body>
<%
		String n1=request.getParameter("Name");
		String n2=request.getParameter("Mobile");
		String n3=request.getParameter("Password");
		String n4=request.getParameter("Email");
		
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="insert into customer values(?,?,?,?)";
			PreparedStatement st=c1.prepareStatement(x1);
			st.setString(1,n1);
			st.setString(2,n2);
			st.setString(3,n3);
			st.setString(4,n4);
			st.executeUpdate();
			c1.close();
			out.println("You are now Sign in");
%>
</body>
</html>
<a href=signin.jsp> Sign In again</a>