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
      <title>STAG FURNITURES</title>
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
        .logo{
          position: absolute;
          top: 10%;
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
		ul.bottom{
              list-style-type: none;
			  position: absolute;
			  top: 50%;
			  left: 50%;
			  transform: translate(-50%,-50%);
        }
		ul.bottom li{
          float: left;
          width: 200px;
          height: 40px;
          line-height: 20px;
          text-align: center;
          font-size: 20px;
          display: block;
        }
        ul.bottom li a{
          text-decoration: none;
          color: #fff;
          padding: 3px 15px;
          border: 1px solid #fff;
          transition: 0.3s ease;
          border-color: #00ff00;
        }
        ul.bottom li a:hover{
          color: white;
          background-color: #00ff00;
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
	</style>
</head>
<body>
<header>
	<ul class="bottom">
	<li><a href="${pageContext.request.contextPath}/signup.jsp">SIGNUP</a></li>
	<li><a href="${pageContext.request.contextPath}/welcome.jsp">LOGIN</a></li>
	</ul>
    <div class="main">
      <div class="logo">
        <img src="images/logo.png">
      </div>
    </div>
    <div class="title">
      <h1>STAG FURNITURES</h1>
    </div>
</header>
<div class="download">
	<img src="images/download.png">
</div>
<div class="connect">
	<img src="images/connect.jpg">
</div>
</body>
</html>
