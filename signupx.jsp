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
        <title> signup </title>
    </head>
    <body>
        <%
            try
            {
				String id=request.getParameter("id");
                String name=request.getParameter("name");
				String pass=request.getParameter("pass");
				String address=request.getParameter("add");
				String ph=request.getParameter("phno");
				String idx;
				int f=0;
				
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online","root","");

				Statement stmt= con.createStatement();
                String sql ="SELECT * FROM customers";
                ResultSet r= stmt.executeQuery(sql);
                while(r.next())
                {
                    idx=r.getString("Id");
                    if(idx.equals(id))
						f=1;
                }
                if(f==1)
				{
					request.setAttribute("errorMessage","ID already taken. Choose different ID.");
					request.getRequestDispatcher("/signup.jsp").forward(request,response);
				}
				else
				{
					String query = " insert into customers" + "(Id, Name, Password, Address, Phno) values" + "(?,?,?,?,?)";
					
					PreparedStatement preparedStmt = con.prepareStatement(query);
					preparedStmt.setString (1,id);
					preparedStmt.setString (2,name);
					preparedStmt.setString (3,pass);
					preparedStmt.setString (4,address);
					preparedStmt.setString (5,ph);
					preparedStmt.execute();

					response.sendRedirect("http://localhost:8080/onlineshopping/index.jsp");
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