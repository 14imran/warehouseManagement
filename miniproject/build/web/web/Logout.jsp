<%-- 
    Document   : Logout
    Created on : 8 Jul, 2019, 11:08:57 AM
    Author     : taj goud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body   background="B.S (123).jpg" >
                 
        
         <link rel="stylesheet" style="text/css" href="cascadess.css"/>
         <marquee align="center" bgcolor="cyan" direction="middle" behavior="alternative" height="50"> 
             <font size="15" color="#C71585"><img src="marquee.png" width="200" height="40" alt="marquee"/>
                Entrepreneur Warehouse Stock Taking system<img src="marquee.png" width="200" height="40" alt="marquee"/></marquee></font>
         <br>
             <br>
   
       <%
session.removeAttribute("userid");
session.removeAttribute("pwd");
session.invalidate();
%>
<h1>Logout was done Successfully</h1>
<br><hr>
  <center><font size="5">
** Do u Want to Login? <a href="Login.html">Click Here</a>
<hr>
  </center></font>
    </body>
</html>
