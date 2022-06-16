<%-- 
    Document   : newjsp2
    Created on : 14 Jun, 2022, 2:13:30 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1 >User Details</h1>
        <form  class="for" action ="http://localhost:8080/WebApplication6/WEB-INF/newjsp3.jsp" method="get" >
            User Name: <input type="text" name="name"></br></br>
            Password: <input type="password" name="pwd"></br></br>
            <input type="submit" value="Login" id="b"> 
        </form>
    </center> 
    </body>
</html>
