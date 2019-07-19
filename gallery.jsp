<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OUR GALLERY</title>
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
        .i1{
            position: absolute;
            top: 35%;
            left:2%;
        }
        .i1 img{
            float: left;
            width: 750px;
            height: 500px;
        }
        .i2{
            position: absolute;
            top: 35%;
            right:2%;
        }
        .i2 img{
            float: left;
            width: 750px;
            height: 500px;
        }
        .i3{
            position: absolute;
            top: 100%;
            left:2%;
        }
        .i3 img{
            float: left;
            width: 750px;
            height: 500px;
        }
        .i4{
            position: absolute;
            top: 100%;
            right:2%;
        }
        .i4 img{
            float: left;
            width: 750px;
            height: 500px;
        }
        .i5{
            position: absolute;
            top: 165%;
            left:2%;
        }
        .i5 img{
            float: left;
            width: 750px;
            height: 500px;
        }
        .i6{
            position: absolute;
            top: 165%;
            right:2%;
        }
        .i6 img{
            float: left;
            width: 750px;
            height: 500px;
        }
    </style>
</head>
<body>
<div class="heading">
    <h1>VIEW SOME OF OUR BEST COMPLETED WORKS</h1>
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
    <img src="${pageContext.request.contextPath}/images/gallery/gal1.jpg">
</div>
<div class="i2">
    <img src="${pageContext.request.contextPath}/images/gallery/gal2.jpg">
</div>
<div class="i3">
    <img src="${pageContext.request.contextPath}/images/gallery/gal3.jpg">
</div>
<div class="i4">
    <img src="${pageContext.request.contextPath}/images/gallery/gal4.jpg">
</div>
<div class="i5">
    <img src="${pageContext.request.contextPath}/images/gallery/gal5.jpg">
</div>
<div class="i6">
    <img src="${pageContext.request.contextPath}/images/gallery/gal6.jpg">
</div>
</body>
</html>
