<%@page import="java.sql.*"%>

<html>
<%
	String n1=request.getParameter("uid");
	String n2=request.getParameter("Password");
	
	DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
	Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
	
	PreparedStatement st=c1.prepareStatement("select * from customer where name =? or Mobile=? and password=?");
	st.setString(1,n1);
	st.setString(2,n1);
	st.setString(3,n2);
	
	ResultSet rs=st.executeQuery();
			
	if(rs.next())
	{
		out.println("You are now Sign in");
		session.setAttribute("uid",n1);
		response.sendRedirect("index.jsp");
	}
	else
		out.println("Wrong Credential");
	
	rs.close();
	c1.close();			
	
%>
</html>