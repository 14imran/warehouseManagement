<%-- 
    Document   : dealer_action
    Created on : 8 Jul, 2019, 9:49:47 PM
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
           <form action="" method="post" name="dealer_action"></form>
        <%
        String companyname=request.getParameter("cname");
         String productid=request.getParameter("pid");
          String productname=request.getParameter("pname");
           String code=request.getParameter("c");
          String noofitemsinstock=request.getParameter("nstock");
       PreparedStatement ps=con.prepareStatement("insert into dealermaintenance values(?,?,?,?,?)");
       ps.setString(1,companyname);
        ps.setString(2,productid);
         ps.setString(3,productname);
          ps.setString(4,code);
           ps.setString(5,noofitemsinstock);
         ps.executeUpdate();
               out.println(" values added suceesfully");
 %>
           
           
          
           
           
          
           
           
           
      
                
    </body>
</html>

        
    </body>
</html>

