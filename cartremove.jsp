<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
      <title>SHOPPING CART</title>
      <style>
        *{
          margin: 0;
          padding: 0;
          list-style: none;
          font-family: Century Gothic;
        }
        body{
          background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url(images/background.jpg);
          height: 100vh;
          background-size: cover;
          background-position: center;
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
        .logo{
          position: absolute;
          top: 50%;
          left:45%;
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
		.cart{
          position:absolute;
          top: 80%;
          left:5%;
        }
        .cart img{
          float: left;
          width:100px;
          height: 100px;
        }
		.download{
          position: absolute;
          top: 80%;
          left:44%;
        }
        .download img{
          float: left;
          width:150px;
          height: 100px;
        }
        .connect{
          position: absolute;
          top: 80%;
          right: 5%;
        }
        .connect img{
          float: left;
          width: 250px;
          height: 100px;
        }
        .title{
          position: absolute;
          top: 20%;
          left: 50%;
          transform: translate(-50%,-50%);
        }
        .title h1{
          color: #00ff00;
          font-size: 50px;
        }
        .headingx h2{
            color: #00ff00;
            font-size: 20px;
        }
		.headingy{
            position: absolute;
            top: 35%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .headingy h2{
            color: #00ff00;
            font-size: 20px;
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
	</style>
	<script type="text/javascript">
		function validate()	{
			var idx = document.myform3.bname.value;
			if(idx.length<7 || idx.length>10)	{
				alert("Incorrect Customer Id");
				document.myform3.bname.focus();
				return false;
			}
			var pid = document.myform3.aname.value;
			if(pid!="bo1" && pid!="bo2" && pid!="bo3" && pid!="bo4" && pid!="bo5" && pid!="bo6" && pid!="bed1" && pid!="bed2" && pid!="bed3" && pid!="bed4" && pid!="bed5" && pid!="bed6" && pid!="chair1" && pid!="chair2" && pid!="chair3" && pid!="chair4" && pid!="chair5" && pid!="chair6" && pid!="cs1" && pid!="cs2" && pid!="cs3" && pid!="cs4" && pid!="cs5" && pid!="cs6" && pid!="ll1" && pid!="ll2" && pid!="ll3" && pid!="ll4" && pid!="ll5" && pid!="ll6" && pid!="sofa1" && pid!="sofa2" && pid!="sofa3" && pid!="sofa4" && pid!="sofa5" && pid!="sofa6" && pid!="storage1" && pid!="storage2" && pid!="storage3" && pid!="storage4" && pid!="storage5" && pid!="storage6" && pid!="so1" && pid!="so2" && pid!="so3" && pid!="so4" && pid!="so5" && pid!="so6" && pid!="table1" && pid!="table2" && pid!="table3" && pid!="table4" && pid!="table5" && pid!="table6")	{
				alert("Incorrect Product Id");
				document.myform3.aname.focus();
				return false;
			}
		}
	</script>
</head>
<body>
<header>
	<div class="headingy">
		<h2>ENTER CUSTOMER ID & PRODUCT ID IN THE BOXES TO REMOVE FROM CART</h2>
	</div>
    <div class="main">
      <div class="logo">
        <img src="images/logo.png">
      </div>
      <ul class="top">
        <li><a href="${pageContext.request.contextPath}/index.jsp">HOME</a></li>
        <li><a href="${pageContext.request.contextPath}/services.jsp">SERVICES</a></li>
        <li><a href="${pageContext.request.contextPath}/gallery.jsp">GALLERY</a></li>
        <li><a href="${pageContext.request.contextPath}/about&contact.jsp">ABOUT</a></li>
        <li><a href="${pageContext.request.contextPath}/start.jsp">LOGOUT</a></li>
      </ul>
    </div>
    <div class="title">
      <h1>STAG FURNITURES</h1>
    </div>
	<div class="cart">
      <a href="${pageContext.request.contextPath}/cart.jsp"><img src="images/cart.png"></a>
    </div>
    <div class="download">
      <img src="images/download.png">
    </div>
    <div class="connect">
      <img src="images/connect.jpg">
</header>
	<form action = "cartremovex.jsp" name = "myform3" method = "POST">
            <input type = "text" placeholder = "CUSTOMER ID" name = "bname" required>
			<input type = "text" placeholder = "PRODUCT NAME" name = "aname" required>
			<br>
            <input type = "submit" onClick = "return validate();" value = "Submit" >
    </form>
</body>
</html>
