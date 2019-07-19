<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 19-10-2018
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN</title>
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
            font-size: 30px;
        }
        input[type=text]{
            width: 180px;
			height: 25px;
			margin-bottom: 10px;
			border: 1.5px solid #00ff00;
        }
		input[type=password]{
            width: 180px;
			height: 25px;
			margin-bottom: 10px;
			border: 1.5px solid #00ff00;
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
        .main{
            max-width: 1200px;
            margin: auto;
        }
		form{
			margin: 200px 650px;
			width: 800px;
		}
		.message{
            position: absolute;
            top: 55%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
		.message h2{
            color: #00ff00;
            font-size: 20px;
        }
    </style>
</head>
<body>
	<div class="heading">
		<h1>ENTER LOGIN DETAILS:</h1>
	</div>
	<div class="logo">
        <img src="images/logo.png">
      </div>
	<div class="download">
		<img src="images/download.png">
    </div>
    <div class="connect">
		<img src="images/connect.jpg">
    </div>
	<form class = "submission" action = "login.jsp" method = "POST">
        <input type = "text" placeholder = "Name" name = "aname" required>
        <br>
		<br>
        <input type = "password" placeholder = "Password" name = "apass" required> <br><br>
        <input type = "submit" value = "Submit" >
    </form>
	<div class = "message">
		<h2>${errorMessage}</h2>
	</div>
</body>
</html>