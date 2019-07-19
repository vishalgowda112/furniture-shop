<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 19-10-2018
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%
    String na = request.getParameter( "uname" );
    session.setAttribute( "theName", na );
%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title> product </title>
    </head>
    <body>
        <h1></h1>
        <%
            try
            {
				String cusid=request.getParameter("bname");
                String proname=request.getParameter("aname");
				int quantity=Integer.parseInt(request.getParameter("quan"));
                String a,b;
				int cost,arrival;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/online","root","");
                Statement stmt= con.createStatement();
                String sql ="SELECT * FROM products";
                ResultSet r= stmt.executeQuery(sql);
                while(r.next())
                {
                    a=r.getString("Name");
					b=r.getString("Id");
					cost=r.getInt("Price");
					arrival=r.getInt("Arrival");
                    if(b.equals(proname))
                    {
						String query = " insert into cartitems" + "(Idx, Cost, Quantity, CustomerId, Arrival, Name) values" + "(?,?,?,?,?,?)";
						PreparedStatement preparedStmt = con.prepareStatement(query);
						preparedStmt.setString (1,b);
						preparedStmt.setInt (2,cost);
						preparedStmt.setInt (3,quantity);
						preparedStmt.setString (4,cusid);
						preparedStmt.setInt (5,arrival);
						preparedStmt.setString (6,a);
						preparedStmt.execute();
						
                        response.sendRedirect("http://localhost:8080/onlineshopping/cart.jsp");
                    }
                }
                response.sendRedirect("http://localhost:8080/onlineshopping/index.jsp");
                con.close();
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>