<%-- 
    Document   : regaction
    Created on : Aug 3, 2015, 9:14:33 PM
    Author     : CSE
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
           <form action="" method="post" name="Reg_action"></form>
        <%
        String firstname=request.getParameter("fname");
         String lastname=request.getParameter("lname");
          String pwd=request.getParameter("pwd");
           String address=request.getParameter("add");
            String phno=request.getParameter("phn");
             String gender=request.getParameter("gen");
            String userid=request.getParameter("id");
       PreparedStatement ps=con.prepareStatement("insert into reg values(?,?,?,?,?,?,?)");
       ps.setString(1,firstname);
        ps.setString(2,lastname);
         ps.setString(3,pwd);
          ps.setString(4,address);
           ps.setString(5,phno);
           ps.setString(6,gender);
           ps.setString(7,userid);
         ps.executeUpdate();
               out.println(" register suceesfully");
 %>
           
           
          
           
           
          
           
           
           
      
                
    </body>
</html>

        
    </body>
</html>
