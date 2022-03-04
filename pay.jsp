<html>
<body bgcolor=#1937e4>
<center>
<%String a10=(String)session.getAttribute("pry");%>
<form name=bank action="http:\\localhost:8081\My_Project\pay2.jsp"> 
<table>
<tr>
<td>Bank Account Number*<br> </td>
<td><input type=text name=b1></td>
</tr>
<tr>
<td>Bank Name*</td>
<td><input type=text name=b2></td>
</tr>
<tr>
<td>IFSC Code*</td>
<td><input type=text name=b3></td>
<tr>
<td>Amount*</td>
<td><input type=hidden name=b4 value="<%=a10%>"><%=a10%></td>
</tr>
</table>
<br>
<table align=center>
<tr>
<td> <input type=button value='Pay' onclick= "ss2()">
</tr>
</table>
</form>
</center>
</body>
</html>