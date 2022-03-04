
<%@page import="java.sql.*"%>

<html>
<body>
<%	
		String a4=request.getParameter("n4");
		session.setAttribute("by",a4);
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="insert into cart values(Autoinc.nextval,?,sysdate,?,?)";
			PreparedStatement st=c1.prepareStatement(x1);
			
			String a1=(String)session.getAttribute("cat");
			String a2=(String)session.getAttribute("subcat");
			String a3=(String)session.getAttribute("item");
			String a5=(String)session.getAttribute("uid");
				if(a5.equals("Guest") || a5.equals("") || a5==null)
				{
					out.println("<h1 onclick='signin()'>please <font color=red>Signin</font> first and then proceed</h1>");
				}
				else
				{
			String a6=(String)session.getAttribute("numb");
			String a7=(String)session.getAttribute("price");
			
			st.setString(1,a5);
			st.setString(2,a6);
			st.setString(3,a7);
			//ResultSet rs=st.executeQuery();
			st.executeUpdate();
			    }
			c1.close();
			
%>
</body>
</html>