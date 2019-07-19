<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="com.mongodb.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title> THANK YOU </title>
	</head>
	<body>
    <%
    try
	{
		String id = request.getParameter("id");
		int rate = Integer.parseInt(request.getParameter("rate"));
		String rev = request.getParameter("review");

		MongoClient mong = new MongoClient( "localhost" , 27017 );
		DB db = mong.getDB( "online" );

		DBCollection coll = db.getCollection("reviews");
		BasicDBObject doc = new BasicDBObject();
		doc.put("CustomerId",id);
		doc.put("Rating",rate);
		doc.put("Review",rev);
		coll.insert(doc);
		
		response.sendRedirect("http://localhost:8080/onlineshopping/index.jsp");
    }
    catch(Exception e)
    {
      out.println(e);
    }
    %>
    </body>
</html>