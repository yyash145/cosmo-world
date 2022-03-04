<html>
<head>
<script>
/*


category()
sc(xx)
it(yy)
cs(zz)
ac(ss)
home()
contact()
signin()
signout()
signup()
cart()
cc()
delete1()
py()
ss1()
ss2()
forgot(ab)

sc sub_category
it item
cs buy
ac cart_fun
cc showcart
py pay
ss1 singin_details
ss2 bank_detail
*/

function category()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
		//	alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
	//alert("H3")
		//var q=document.f1.na.value;
		var b="category.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function sc(xx)
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
		//	alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="subcategory.jsp?n1="+xx;
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function it(yy)
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
		//	alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="item.jsp?n2="+yy;
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function cs(zz)
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
		//	alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
	//	alert("H3")
		//var q=document.f1.na.value;
		var b="buy.jsp?n3="+zz;
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function ac(ss)
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
		//	alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
	//	alert("H3")
		//var q=document.f1.na.value;
		var b="cart.jsp?n4="+ss;
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function home()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
		//	alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
	//alert("H3")
		//var q=document.f1.na.value;
		var b="home.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function contact()
{
			var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="contact.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function signin()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="signin.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function signup()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="signup.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function signout()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			alert("Are You Sure to Exit")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="signout.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function cart()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="cart.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function cc()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="showcart.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function delete1(qq)
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="delet2.jsp?n8="+qq;
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
		alert("Are you Sure")
}

function py()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="pay.jsp";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4")
}

function ss1()
{
	if (document.signup.Name.value=="")
	{
		alert("Please enter Name")
		
	}	
	else if (document.signup.Mobile.value=="")
	{
		alert("Please enter Mobile No.")
		
	}
	else if (document.signup.Password.value=="")
	{
		alert("Please enter Password")
		
	}
	else
		document.signup.submit();
}

function ss2()
{
	if (document.bank.b1.value=="")
	{
		alert("Please enter your Bank Account Number")
		
	}
	else if (document.bank.b2.value=="")
	{
		alert("Please enter your Bank Name")
		
	}
	else if (document.bank.b3.value=="")
	{
		alert("Please enter IFSC Code")
		
	}
	else
		document.bank.submit();
	
}

function forot()
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="forgot.jsp?f4=+ab";
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4") 
}

/*function buy_page(cc)
{
		var xm;
		//alert("H1")
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechange=function()
	{
		if(xm.readyState==4)
		{
			//alert("H2")
			z=xm.responseText;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
	}
		//alert("H3")
		//var q=document.f1.na.value;
		var b="pay.jsp?n3="+cc;
		xm.open("GET",b,true);
		xm.send(null);
		//alert("H4") 
}*/

</script>
</head>

<body bgcolor="#ffaf00">
<font color=red size=+8>
<center> Cosmo World </center>
</font>
<p align=right>

Welcome <% String ww=(String)session.getAttribute("uid");
out.println(ww);%>
</p>

<table border=1 width=100%>
<tr>
<td onclick="category()"><b> Categories </b> </td>
<td onclick="home()"><b> Home </b> </td>
<td onclick="contact()"><b> Contact </b> </td>
<td onclick="signin()"><b> Sign_In </b> </td>
<td onclick="signup()"><b> Sign_Up </b> </td>
<td onclick="signout()"><b> Sign_Out </b> </td>
<td onclick="cc()"><b> Cart </b></td>
</Table>

<p id ="aa"></p>
