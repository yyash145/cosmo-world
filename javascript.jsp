<html>
<body>
<script type="text/javascript">
function abc()
{
	var xm;
	if(window.XMLHttpRequest)
		xm=new XMLHttpRequest;
	else if(window.ActiveXObject)
		xm=new ActiveXObject("Microsoft.XMLHTTP");
	else
	{
		alert("Your Browser doesn't support XMLHTTP!");
		return;
	}
	xm.onreadystatechanged=function();
	{
		if(xm.readyState==4)
		{
			z=xm.response.Text;
			//document.f.time.value=z;
			aa.innerHTML=z;
		}
		var q=document.f1.na.value;
		var b="ajax.php?id="+q;
		xm.open("GET",b,true);
		xm.send(null);
	}
}
</script>
<form name="f1">
Name:<input type=text name="Name" onkeyup="abc();"/>
Time:<input type=text name="Time"/>
<p id="aa"></p>
</form>
</body>
</html>