<%-- 
    Document   : newjsp1
    Created on : 14 Jun, 2022, 2:13:23 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <% String name=request.getParameter("name");
            String password=request.getParameter("pwd");
            Connection c ;
            Statement st;
	    c=DriverManager.getConnection("jdbc:derby://localhost:1527/jspdb");
            st=c.createStatement();
            ResultSet rs=st.executeQuery("select * from Customer");
            
            while(rs.next()){
                if(name.equals(rs.getString(1)) && password.equals(rs.getString(2))){ 
                      
                    out.println("<center><h1>Welcome "+request.getParameter("name")+" </h1></center>");
                    session.setAttribute("name",name);
                    response.sendRedirect("http://localhost:8080/WebApplication6/WEB-INF/newjsp2.jsp");
                    break;
                }
                if(name.equals(rs.getString(1))){
                 response.sendRedirect("http://localhost:8080/WebApplication6/WEB-INF/newjsp.jsp");
                 break;
                }
                       
            }
            
            out.println("<center><h1>Invalid user</h1></center>");
        %>
    </body>
</html>