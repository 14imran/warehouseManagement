<%-- 
    Document   : updatedealer_action
    Created on : 10 Jul, 2019, 7:39:16 AM
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
            String companyname=request.getParameter("cname");
    String productid=request.getParameter("pid");
         String productname=request.getParameter("pname");
           String code=request.getParameter("c");
         String noofitemsinstock=request.getParameter("nstock");
         
             
             
        
        
        
        
         
        PreparedStatement ps=con.prepareStatement("update dealermaintenance set companyname=?, productid=?,productname=?,code=?,noofitemsinstock=? where productid='"+12345+"'");
        
      
         
          
                ps.setString(1,companyname);      
                ps.setString(2,productid);
                ps.setString(3,productname);
                ps.setString(4,code);
                ps.setString(5,noofitemsinstock);
            
           
            
        
       
       
       int k=ps.executeUpdate();
       
        if(k!=0)
        {
            response.sendRedirect("viewdealer.jsp");
        }
      
        %>
        
        
        
        
        
    </body>
</html>
