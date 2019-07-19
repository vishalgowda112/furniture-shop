<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 18-10-2018
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		  align-self=center;
		  background-repeat:no-repeat;
		  background-position: center;
		  background-attachment: fixed;
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
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.lang.*"%> 

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "online";
String userId = "root";
String password = "";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
catch(Exception e)
            {
                out.println(e);
            }

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<body>
	<%
            try
            {
                String cusid=request.getParameter("aname");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/online","root","");
                Statement stmt= con.createStatement();
                String sql ="SELECT * FROM cartitems where CustomerId = '"+cusid+"'";
                resultSet= stmt.executeQuery(sql);
            }
            catch(Exception e)
            {
                out.println(e);
            }
    %>
<header>
	<div class="headingy">
		<h2>ITEMS IN CART DISPLAYED ON TOP-LEFT</h2>
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
<h2 align="left" style="color:#00ff00;"><font><strong>CART ITEMS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#00ff00">
<td><b>Sl.No</b></td>
<td><b>PRODUCT ID</b></td>
<td><b>PRODUCT NAME</b></td>
<td><b>COST</b></td>
<td><b>QUANTITY</b></td>
<td><b>ARRIVAL TIME</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<td><%=resultSet.getInt("SlNo") %></td>
<td><%=resultSet.getString("Idx") %></td>
<td><%=resultSet.getString("Name") %></td>
<td><%=resultSet.getInt("Cost") %></td>
<td><%=resultSet.getInt("Quantity") %></td>
<td><%=resultSet.getInt("Arrival") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>