<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ABOUT US & CONTACT DETAILS</title>
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
        .heading1{
            position: absolute;
            top: 25%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .heading1 h1{
            color: #00ff00;
            font-size: 40px;
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
        .heading2{
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .heading2 h2{
            color: #00ff00;
            font-size: 40px;
        }
        .ulx{
            list-style-type: none;
            position: absolute;
            left:35%;
            top:75%;
        }
        .ulx li{
            display: block;
            text-decoration: none;
            color: #fff;
            font-size: 20px;
        }
        .p1{
            position: absolute;
            left:3%;
            top:30%;
        }
        .p1 p{
            color: #fff;
            font-size: 20px;
        }
    </style>
</head>
<body>
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
<div class="heading1">
    <h1>ABOUT US</h1>
</div>
<div class="p1">
    <p>
        Stag Furniture was established in 2003 after months of market research in the furniture industry.
        It came to our attention that most local furniture retail stores sell low budget and/or poor quality imported furniture at ridiculously high prices.
        At Stag Furniture every piece of furniture is made at our local factory, no subcontractors no imports.
        Our factory creates jobs for many local citizens, giving them the opportunity to build their own future.
        Pension funds and holiday bonuses are just some of the perks we gladly make available to our workers, all to ensure that we have happy and willing staff that helps to build furniture of fine quality for our customers. Compared to other cheaper/imported products, our prices are very competitive and the standard of work much higher.
        We only use high grade raw materials and by paying attention to all our customers’ specific needs, we strive to make every piece a masterpiece.
        It’s one thing to manufacture quality furniture and another to manufacture furniture cheaply and make it look expensive.
        By purchasing from WoodBurn Furniture, you not only get furniture that is durable, strong, good looking and manufactured especially for you, but you can have peace of mind that you will walk away as a satisfied customer.
    </p>
</div>
<div class="heading2">
    <h2>CONTACT DETAILS</h2>
</div>
<div class="ulx">
    <ul>
        <li>PHONE: +91(9036363680)</li>
        <li>EMAIL: stagfurnitures2003@gmail.com</li>
        <li>ADDRESS: #53, JC Road, Bangalore-560002</li>
    </ul>
</div>
</body>
</html>