<%-- 
    Document   : reg
    Created on : Aug 3, 2015, 9:01:17 PM
    Author     : CSE
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
        <h1>Registeration</h1>
        <form action="Reg_action.jsp">
    firstname:<input type="text" name="fname"><br><br>
     lastname:<input type="text" name="lname"><br><br>
      pwd:<input type="text" name="pwd"><br><br>
       address:<input type="text" name="add"><br><br>
        phno:<input type="text" name="phn"><br><br>
         gender:<input type="text" name="gen"><br><br>
          userid:<input type="text" name="id"><br><br>
          <input type="submit" value="submit">
          ** already user Login?** <a href="Login.html">Click Here</a>
        </form>
    </center>
    </body>
</html>
