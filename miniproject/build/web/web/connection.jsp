<%-- 
    Document   : connection
    Created on : 26 Jun, 2019, 10:23:09 PM
    Author     : taj goud
--%>

<%@page import="java.sql.*" %>
        <%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
       <%!Connection con=null;%>
        <%Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/reg","root","asd");
        
        out.println("Connected");
                %>
    </body>
</html>
