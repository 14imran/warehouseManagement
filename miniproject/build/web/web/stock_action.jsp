<%-- 
    Document   : stock_action
    Created on : 8 Jul, 2019, 10:58:08 PM
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
           <form action="" method="post" name="stock_action"></form>
        <%
        String productid=request.getParameter("pid");
         String productname=request.getParameter("pname");
          String stockavailable=request.getParameter("stock");
           String limitvalue=request.getParameter("limit");
       PreparedStatement ps=con.prepareStatement("insert into stockmaintenance values(?,?,?,?)");
       ps.setString(1,productid);
        ps.setString(2,productname);
         ps.setString(3,stockavailable);
          ps.setString(4,limitvalue);
         ps.executeUpdate();
               out.println(" values added suceesfully");
 %>
                    
    </body>
</html>

