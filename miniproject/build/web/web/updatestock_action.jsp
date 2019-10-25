<%-- 
    Document   : updatestock_action
    Created on : 9 Jul, 2019, 1:59:43 PM
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
        <%
        
        String productid=request.getParameter("pid");
         String productname=request.getParameter("pname");
           String stockavailable=request.getParameter("stock");
         String limitvalue=request.getParameter("limit");
         
             
             
        
        
        
        
         
        PreparedStatement ps=con.prepareStatement("update stockmaintenance set productid=?,productname=?,stockavailable=?,limitvalue=? where productid='"+12345555+"'");
        
      
         
          
                ps.setString(1,productid);      
                ps.setString(2,productname);
                ps.setString(3,stockavailable);
                ps.setString(4,limitvalue);
            
           
            
        
       
       
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            response.sendRedirect("viewstock.jsp");
        }
      
        %>
        
        
        
        
        
    </body>
</html>
