a<%@page import="java.sql.*"%>

<html>
<body>
<%
		String a10=(String)session.getAttribute("uid");
		String n3=request.getParameter("b1");
		String n4=request.getParameter("b2");
		String n5=request.getParameter("b3");
		String n7=request.getParameter("b4");
		
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			
			String n8="";
			String nn8="select Transac.nextval from dual ";
			PreparedStatement wq=c1.prepareStatement(nn8);
			ResultSet ew=wq.executeQuery();
			if (ew.next())
			{
				n8=ew.getString(1);
			}
			//session.setAttribute("tno",n8);
			
			String x1="insert into netb values('CW'||?,?,?,?,?,sysdate,?)";
			PreparedStatement st=c1.prepareStatement(x1);
			
			st.setString(1,n8);
			st.setString(2,a10);
			st.setString(3,n3);
			st.setString(4,n4);
			st.setString(5,n5);
			st.setString(6,n7);
			st.executeUpdate();	
		
			PreparedStatement hhh=c1.prepareStatement("select * from cart where userid=?");
			hhh.setString(1,a10);
			PreparedStatement tyc=c1.prepareStatement("insert into ordr values(?,'CW'||?,?,?,sysdate)");
			ResultSet rscart=hhh.executeQuery();
			while(rscart.next())
			{
				tyc.setString(1,rscart.getString(2));
				tyc.setString(2,n8);
				tyc.setString(3,rscart.getString(4));
				tyc.setString(4,rscart.getString(5));
				tyc.executeUpdate();
			}
			
			PreparedStatement hh=c1.prepareStatement("delete from cart where userid=?");
			hh.setString(1,a10);
			hh.executeUpdate();
				out.println("Thamks for Shopping");
			response.sendRedirect("index.jsp");
			ew.close();
			c1.close();
			rscart.close();
%>
</body>
</html>