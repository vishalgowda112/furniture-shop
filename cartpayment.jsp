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
      <title>BILL</title>
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
		input[type=text]{
			width: 275px;
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
			width: 125px;
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
			var idx = document.myform5.bname.value;
			if(idx.length<7 || idx.length>10)	{
				alert("Incorrect Customer Id");
				document.myform5.bname.focus();
				return false;
			}
			var meth = document.myform5.aname.value;
			if(meth!="cash" && meth!="card")	{
				alert("Incorrect Payment Method");
				document.myform5.aname.focus();
				return false;
			}
		}
	</script>
</head>
<body>
	<header>
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
	<form action = "cartpaymentx.jsp" name = "myform5" method = "POST">
            <input type = "text" placeholder = "CUSTOMER ID" name = "bname" required>
			<input type = "text" placeholder = "PAYMENT METHOD (CASH/CARD ONLY)" name = "aname" required>
			<br>
            <input type = "submit" onClick = "return validate();" value = "CONFIRM & PAY">
    </form>
</body>
</html>
