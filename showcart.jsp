<%@page import="java.sql.*"%>

<html>
<body>
<%	
			//String a8=request.getParameter("n5");
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection c1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","yash");
			String x1="select cart.userid, cart.dop, categories.item, categories.image, categories.description, categories.mrp, categories.discount, categories.price, cart.sn from cart,categories where cart.num=categories.num and USERID=?";
			PreparedStatement st=c1.prepareStatement(x1);
			
			String a9=(String)session.getAttribute("uid");
			st.setString(1,a9);

			ResultSet rs=st.executeQuery();
			
			out.println("<font size=-1 align=right>");
			out.println("<b>");
			out.println(a9);
			out.println("</b></font>");
			
				out.println("<table border=1 width=100% align=center>");
				out.println("<tr>");
				out.println("<th> S.No. <th> Name <th> Date of Purchase <th> Photo <th> Price <th> Description <th> </th>");
					int s=0;
				while(rs.next())
				{
					out.println("<tr>");
					out.println("<td>"+rs.getString(9));
					out.println("<td>"+rs.getString(3));
					out.println("<td width=100>"+rs.getString(2));
					out.println("<td>"+"<img src='"+rs.getString(4)+"' length=50 width=80>");
					out.println("<td>"+rs.getString(8));
					s=s+Integer.parseInt(rs.getString(8));
					out.println("<td>"+rs.getString(5));
					out.println("<td onclick=delete1('"+rs.getString("sn")+"')>");
					out.println("Delete this Item");
					
					out.println("</td>");
				}	
				session.setAttribute("pry",s+"");
				out.println("</table>");
				%>
				<br>
			
				<table align=center border=1 width=152>
				<tr>
				<td> Total <td> <%=s%> </td>
				<tr>
				<td onclick="py()"> Pay <td> Rs.<%=s%> </td>
				</table>
		<%	rs.close();
			c1.close();
			
%>
</body>
</html>