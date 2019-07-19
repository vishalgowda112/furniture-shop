<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 15:53
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
        .button{
          position: absolute;
          top: 50%;
          left: 15%;
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
          color: #00ff00;
          padding: 5px 10px;
          transition: 0.3s ease;
        }
        ul.bottom li a:hover{
          background-color:#666666;
        }
        ul.bottom li ul.inner li{
          display: none;
        }
        ul.bottom li:hover ul.inner li{
          display: block;
        }
        ul.bottom li ul.inner li a{
          transition: 0.3s ease;
          color:#fff;
        }
        ul.bottom li ul.inner li a:hover{
          color: #00ff00;
          background-color: #666666;
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
      </style>
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
    <div class="button">
	  <ul class="bottom">
		<li><a class="btn">SALE</a>
          <ul class="inner">
            <li><a href="${pageContext.request.contextPath}/tables.jsp" class="btn">TABLES</a></li>
            <li><a href="${pageContext.request.contextPath}/sofas.jsp" class="btn">SOFAS</a></li>
          </ul>
        </li>
        <li><a class="btn">LIVING</a>
          <ul class="inner">
            <li><a href="${pageContext.request.contextPath}/sofas.jsp" class="btn">SOFAS</a></li>
            <li><a href="${pageContext.request.contextPath}/chairs.jsp" class="btn">CHAIRS</a></li>
            <li><a href="${pageContext.request.contextPath}/tables.jsp" class="btn">TABLES</a></li>
            <li><a href="${pageContext.request.contextPath}/balconyoutdoor.jsp" class="btn">BALCONY/OUTDOOR</a></li>
          </ul>
        </li>
        <li><a class="btn">BEDROOM</a>
          <ul class="inner">
            <li><a href="${pageContext.request.contextPath}/chairs.jsp" class="btn">CHAIRS</a></li>
            <li><a href="${pageContext.request.contextPath}/lampslights.jsp" class="btn">LAMPS/LIGHTING</a></li>
            <li><a href="${pageContext.request.contextPath}/beds.jsp" class="btn">BEDS</a></li>
            <li><a href="${pageContext.request.contextPath}/storages.jsp" class="btn">STORAGE</a></li>
          </ul>
        </li>
        <li><a class="btn">KITCHEN</a>
          <ul class="inner">
            <li><a href="${pageContext.request.contextPath}/stovesovens.jsp" class="btn">STOVES/OVENS</a></li>
            <li><a href="${pageContext.request.contextPath}/storages.jsp" class="btn">STORAGE</a></li>
          </ul>
        </li>
        <li><a class="btn">DINING</a>
          <ul class="inner">
            <li><a href="${pageContext.request.contextPath}/chairs.jsp" class="btn">CHAIRS</a></li>
            <li><a href="${pageContext.request.contextPath}/tables.jsp" class="btn">TABLES</a></li>
            <li><a href="${pageContext.request.contextPath}/crockerysets.jsp" class="btn">CROCKERY SETS</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="cart">
      <a href="${pageContext.request.contextPath}/cart.jsp"><img src="images/cart.png"></a>
    </div>
    <div class="download">
      <img src="images/download.png">
    </div>
    <div class="connect">
      <img src="images/connect.jpg">
    </div>
  </header>
  </body>
</html>