<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SERVICES WE PROVIDE</title>
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
        .points{
            position: absolute;
            top: 30%;
            left: 35%;
        }
        ol.p li{
            font-size: 20px;
            color: #fff;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="heading">
    <h1>UNMATCHED SERVICES WE PROVIDE:</h1>
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
<div class="points">
    <ol type="I" start="1" class="p">
        <li>100% GUARANTEED QUALITY</li>
        <li>NO ADDITIONAL WASTAGE OR MAKING CHARGES</li>
        <li>FREE DELIVERY AND INSTALLATION</li>
        <li>PRICES INCLUSIVE OF ALL TAXES</li>
        <li>BEST MAINTANENCE AND EXCHANGE OFFERS</li>
        <li>MOST COMPETITIVE PRICES IN THE MARKET</li>
    </ol>
</div>
</body>
</html>