<%--
  Created by IntelliJ IDEA.
  User: Vishal
  Date: 19-10-2018
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title> login </title>
    </head>
    <body>
        <h1></h1>
        <%
            try
            {
                String name=request.getParameter("aname");
                String pass=request.getParameter("apass");
                String a,b;
				int f=0;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/online","root","");
                Statement stmt= con.createStatement();
                String sql ="SELECT * FROM customers";
                ResultSet r= stmt.executeQuery(sql);
                while(r.next())
                {
                    a=r.getString("Name");
                    b=r.getString("Password");
                    if(a.equals(name) && b.equals(pass))
                    {
						f=1;
                        response.sendRedirect("http://localhost:8080/onlineshopping/index.jsp");
                    }
                }
                if(f==0)
				{
					request.setAttribute("errorMessage","Invalid username or password");
					request.getRequestDispatcher("/welcome.jsp").forward(request,response);
				}
                con.close();
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
