<%-- 
    Document   : loginaction1
    Created on : 8 Jul, 2019, 11:56:17 AM
    Author     : taj goud
--%>

<%@include file="connection.jsp"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           Statement st=con.createStatement();
           String id=request.getParameter("UserId");
           String password=request.getParameter("Password");
           

           session.setAttribute("UserId","id");
           
           String s=(String)session.getAttribute("UserId");

           
           ResultSet rs=st.executeQuery("select userid, Pwd from reg where userid='"+id+"'");
           if(rs.next())
               {
               String u=rs.getString(1);
               String p=rs.getString(2);
               if(p.equals(password)&&u.equals(id))
                   {
                   %>
                   <jsp:forward page="home.jsp"/>
                   <%
                  }
               else
                
               {%>
               <jsp:forward page="error.jsp"/>
               <%
               }
             }
               else
               {
                  %>
                  <jsp:forward page="Menu1.html"/>
                  <%
               }
       
       %>
       
       
                   
     </body>
</html>