<%-- 
    Document   : product_action
    Created on : 8 Jul, 2019, 10:46:29 PM
    Author     : taj goud
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <form action="" method="post" name="product_action"></form>
        <%
        String sendto=request.getParameter("send");
         String receivedfrom=request.getParameter("receive");
       PreparedStatement ps=con.prepareStatement("insert into productmove values(?,?)");
       ps.setString(1,sendto);
        ps.setString(2,receivedfrom);
         ps.executeUpdate();
               out.println(" values added suceesfully");
 %>
                    
    </body>
</html>