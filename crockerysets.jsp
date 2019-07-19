<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CROCKERY SETS</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            font-family: Century Gothic;
        }
        body{
            background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(images/background.jpg);
            height: 100vh;
            background-size: cover;
            background-position: center;
        }
        .heading{
            position: absolute;
            top: 15%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .heading h1{
            color: #00ff00;
            font-size: 40px;
        }
        .headingx{
            position: absolute;
            top: 25%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .headingx h2{
            color: #00ff00;
            font-size: 20px;
        }
        .logo{
            position: absolute;
            top: 15%;
            left:5%;
        }
        .logo img{
            float: left;
            width: 100px;
            height: 100px;
        }
        .main{
            max-width: 1200px;
            margin: auto;
        }
        ul.top{
            float: right;
            list-style-type: none;
            margin-top: 15px;
        }
        ul.top li{
            display: inline-block;
        }
        ul.top li a{
            text-decoration: none;
            color: #fff;
            padding: 3px 15px;
            border: 1px solid #fff;
            transition: 0.3s ease;
            border-color: #00ff00;
        }
        ul.top li a:hover{
            color: white;
            background-color: #00ff00;
        }
        .i1{
            position: absolute;
            top: 35%;
            left:2%;
        }
        .i1 img{
            float: left;
            width: 450px;
            height: 400px;
        }
        .i2{
            position: absolute;
            top: 35%;
            right:2%;
        }
        .i2 img{
            float: left;
            width: 450px;
            height: 400px;
        }
        .i3{
            position: absolute;
            top: 35%;
            left:35%;
        }
        .i3 img{
            float: left;
            width: 450px;
            height: 400px;
        }
        .i4{
            position: absolute;
            top: 105%;
            right:2%;
        }
        .i4 img{
            float: left;
            width: 450px;
            height: 400px;
        }
        .i5{
            position: absolute;
            top: 105%;
            left:2%;
        }
        .i5 img{
            float: left;
            width: 450px;
            height: 400px;
        }
        .i6{
            position: absolute;
            top: 105%;
            left:35%;
        }
        .i6 img{
            float: left;
            width: 450px;
            height: 400px;
        }
		input[type=text]{
			width: 150px;
			border: 2px solid #aaa;
			border-radius: 4px;
			margin: 8px 0;
			outline: none;
			padding: 8px;
			box-sizing: border-box;
			transition: 0s;
		}
		input[type=text]:focus{
			border-color: #00ff00;
			box-shadow: 0 0 8px 0 #00ff00;
		}
		input[type=submit] {
			width: 100px;
			height: 30px;
			border: none;
			background: #00ff00;
			color: white;
			border-radius: 4px;
            cursor: pointer;
        }
		input[type=submit]:hover{
			border: 2px solid #00ff00;
			background: white;
			color: #00ff00;
			border-radius: 4px;
            cursor: pointer;
		}
		.prod1{
            position: absolute;
            top: 95%;
            left: 15%;
            transform: translate(-50%,-50%);
        }
        .prod1 h3{
            color: #00ff00;
            font-size: 25px;
        }
		.prod2{
            position: absolute;
            top: 95%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .prod2 h3{
            color: #00ff00;
            font-size: 25px;
        }
		.prod3{
            position: absolute;
            top: 95%;
            left: 80%;
            transform: translate(-50%,-50%);
        }
        .prod3 h3{
            color: #00ff00;
            font-size: 25px;
        }
		.prod4{
            position: absolute;
            top: 165%;
            left: 15%;
            transform: translate(-50%,-50%);
        }
        .prod4 h3{
            color: #00ff00;
            font-size: 25px;
        }
		.prod5{
            position: absolute;
            top: 165%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .prod5 h3{
            color: #00ff00;
            font-size: 25px;
        }
		.prod6{
            position: absolute;
            top: 165%;
            left: 80%;
            transform: translate(-50%,-50%);
        }
        .prod6 h3{
            color: #00ff00;
            font-size: 25px;
        }
    </style>
	<script type="text/javascript">
		function validate()	{
			var idx = document.myform2.bname.value;
			if(idx.length<7 || idx.length>10)	{
				alert("Incorrect Customer Id");
				document.myform2.bname.focus();
				return false;
			}
			var pid = document.myform2.aname.value;
			if(pid!="cs1" && pid!="cs2" && pid!="cs3" && pid!="cs4" && pid!="cs5" && pid!="cs6")	{
				alert("Incorrect Product Id");
				document.myform2.aname.focus();
				return false;
			}
			var qua = document.myform2.quan.value;
			if(qua>20)	{
				alert("Max allowed is 20. Special Permission needed to buy more");
				document.myform2.quan.focus();
				return false;
			}
			if(isNaN(qua))	{
				alert("Invalid entry.");
				document.myform2.quan.focus();
				return false;
			}
		}
	</script>
</head>
<body>
<div class="heading">
    <h1>CROCKERY SETS</h1>
</div>
<div class="headingx">
    <h2>ENTER DETAILS IN THE TOP-LEFT TO ADD TO CART</h2>
</div>
<div class="main">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/images/logo.png">
    </div>
    <ul class="top">
        <li><a href="${pageContext.request.contextPath}/index.jsp">HOME</a></li>
        <li><a href="${pageContext.request.contextPath}/services.jsp">SERVICES</a></li>
        <li><a href="${pageContext.request.contextPath}/gallery.jsp">GALLERY</a></li>
        <li><a href="${pageContext.request.contextPath}/about&contact.jsp">ABOUT</a></li>
        <li><a href="${pageContext.request.contextPath}/start.jsp">LOGOUT</a></li>
    </ul>
</div>
<div class="i1">
    <a href="#"><img src="${pageContext.request.contextPath}/images/crockery/crock1.jpg"></a>
</div>
<div class="i2">
    <a href="#"><img src="${pageContext.request.contextPath}/images/crockery/crock2.png"></a>
</div>
<div class="i3">
    <a href="#"><img src="${pageContext.request.contextPath}/images/crockery/crock3.jpg"></a>
</div>
<div class="i4">
    <a href="#"><img src="${pageContext.request.contextPath}/images/crockery/crock4.jpg"></a>
</div>
<div class="i5">
    <a href="#"><img src="${pageContext.request.contextPath}/images/crockery/crock5.jpg"></a>
</div>
<div class="i6">
    <a href="#"><img src="${pageContext.request.contextPath}/images/crockery/crock6.jpg"></a>
</div>
<div class="prod1">
	<h3>ID : cs1<br>COST : Rs 1000<br>ARRIVAL TIME : 1 DAYS<h3>
</div>
<div class="prod2">
	<h3>ID : cs2<br>COST : Rs 2000<br>ARRIVAL TIME : 2 DAYS<h3>
</div>
<div class="prod3">
	<h3>ID : cs3<br>COST : Rs 3000<br>ARRIVAL TIME : 3 DAYS<h3>
</div>
<div class="prod4">
	<h3>ID : cs4<br>COST : Rs 4000<br>ARRIVAL TIME : 4 DAYS<h3>
</div>
<div class="prod5">
	<h3>ID : cs5<br>COST : Rs 5000<br>ARRIVAL TIME : 5 DAYS<h3>
</div>
<div class="prod6">
	<h3>ID : cs6<br>COST : Rs 6000<br>ARRIVAL TIME : 6 DAYS<h3>
</div>
	<form action = "products.jsp" name = "myform2" method = "POST">
        <input type = "text" placeholder="CUSTOMER ID" name = "bname" required>
		<input type = "text" placeholder="PRODUCT ID" name = "aname" required>
		<input type = "text" placeholder="QUANTITY" name = "quan" required>
        <br>
		<input type = "submit" onClick = "return validate();" value = "Submit" >
    </form>
</body>
</html>
