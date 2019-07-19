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
          top: 80%;
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
        .headingx h2{
            color: #00ff00;
            font-size: 20px;
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
            width: 180px;
			height: 25px;
			margin-bottom: 10px;
			border: 1.5px solid #00ff00;
        }
		input[type=number]{
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
		form{
			margin: 200px 650px;
			width: 800px;
		}
		.heading{
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .heading h1{
            color: #00ff00;
            font-size: 30px;
        }
	</style>
	<script type="text/javascript">
		function validate()	{
			var idx = document.myform6.id.value;
			if(idx.length<7 || idx.length>10)	{
				alert("Incorrect Customer Id");
				document.myform6.id.focus();
				return false;
			}
			var rate = document.myform6.rate.value;
			if(rate<1 || rate>5)	{
				alert("Allowed rating is between 1 and 5 only.");
				document.myform6.rate.focus();
				return false;
			}
			if(isNaN(rate))	{
				alert("Invalid entry.");
				document.myform6.rate.focus();
				return false;
			}
		}
	</script>
</head>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.lang.*"%> 

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

Connection connection = null;
Statement statement = null;
ResultSet resultSet1 = null;
ResultSet resultSet2 = null;
ResultSet resultSet3 = null;
%>
<body>
	<%
            try
            {
                String cusid=request.getParameter("bname");
				String method=request.getParameter("aname");
                String a;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/online","root","");
                Statement stmt1= con.createStatement();
                String sql1 = "SELECT * FROM cartitems where CustomerId = '"+cusid+"'";
                resultSet1= stmt1.executeQuery(sql1);
				int sum=0,x1,x2,y=0,z;
				while(resultSet1.next()){
					x1 = resultSet1.getInt("Cost");
					x2 = resultSet1.getInt("Quantity");
					sum=sum+x1*x2;
					z = resultSet1.getInt("Arrival");
					if(z>y)
					y=z;
				}
			Statement stmt2= con.createStatement();
			String sql2 = "SELECT * FROM customers where Id = '"+cusid+"'";
			resultSet2= stmt2.executeQuery(sql2);
			while(resultSet2.next()){
				String ph = resultSet2.getString("PhNo");
				String query = " insert into bill" + "(Idx, TotalCost, Address, Name, Arrival, Method, PhNo) values" + "(?,?,?,?,?,?,?)";
				PreparedStatement preparedStmt = con.prepareStatement(query);
				preparedStmt.setString (1,resultSet2.getString("Id"));
				preparedStmt.setInt (2,sum);
				preparedStmt.setString (3,resultSet2.getString("Address"));
				preparedStmt.setString (4,resultSet2.getString("Name"));
				preparedStmt.setInt (5,y);
				preparedStmt.setString (6,method);
				preparedStmt.setString(7,ph);
				preparedStmt.execute();
			}
			}
			catch(Exception e)
            {
                out.println(e);
            }
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/online","root","");
                Statement stmt3= con.createStatement();
				String cusidx=request.getParameter("bname");
				String sql3 = "SELECT * FROM bill where Idx = '"+cusidx+"'";
				resultSet3= stmt3.executeQuery(sql3);
    %>
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
		<div class="download">
		  <img src="images/download.png">
		</div>
		<div class="connect">
		  <img src="images/connect.jpg">
	</header>
	<h2 align="left" style="color:#00ff00;"><font><strong>BILL</strong></font></h2>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
	<tr>

	</tr>
	<tr bgcolor="#00ff00">
	<td><b>BILL ID</b></td>
	<td><b>CUSTOMER ID</b></td>
	<td><b>CUSTOMER NAME</b></td>
	<td><b>DELIVERY ADDRESS</b></td>
	<td><b>PHONE NUMBER</b></td>
	<td><b>TOTAL COST</b></td>
	<td><b>PAYMENT METHOD</b></td>
	<td><b>ARRIVAL TIME</b></td>
	</tr>
	<%
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	while(resultSet3.next()){
	%>
	<tr bgcolor="#ffffff">

	<td><%=resultSet3.getInt("SlNo") %></td>
	<td><%=resultSet3.getString("Idx") %></td>
	<td><%=resultSet3.getString("Name") %></td>
	<td><%=resultSet3.getString("Address") %></td>
	<td><%=resultSet3.getString("PhNo") %></td>
	<td><%=resultSet3.getInt("TotalCost") %></td>
	<td><%=resultSet3.getString("Method") %></td>
	<td><%=resultSet3.getInt("Arrival") %></td>

	</tr>

	<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	</table>
	<div class="heading">
		<h1>THANK YOU! PLEASE DROP A REVIEW</h1>
	</div>
	<form class = "submission" name = "myform6" action = "mongo.jsp" method = "POST">
        <input type = "text" placeholder = "Id" name = "id" required>
        <br><br>
		<input type = "number" placeholder = "Rating(1-5)" name = "rate">
		<br><br>
		<input type = "text" placeholder = "Your Review" name = "review">
        <br><br>
        <input type = "submit" onClick = "return validate();" value = "Submit" >
    </form>
</body>
</html>