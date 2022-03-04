<html>
<body>

<form action="signin2.jsp">
<center>
<table>
<tr>
<td>User Id/Mobile No. </td> <td><input type=text name=uid></td>
</tr>
<tr>
<td>Password </td> <td><input type=password name=Password></td>
</tr>
</table>
<table align=center>
<tr>
<td> <input type=submit value='Sign In'>
</tr>
</table>
</form>

<font color=red>
If you forgot your Password,then
</font>

<table>
<tr>
<td align=center> <input type=button value='Click here' onclick="forot()"><td>
</table>

<font color=green >
If you don't have an account<br>
Then SignUp
</font>

<table>
<tr>
<td onclick="signup()"> <input type=button value='Sign Up'>
</tr>
</table>


</center>
</body>
</html>