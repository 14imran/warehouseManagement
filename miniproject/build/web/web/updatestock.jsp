<%-- 
    Document   : updatestock
    Created on : 9 Jul, 2019, 1:48:04 PM
    Author     : taj goud
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updatestock_action.jsp">
            <%
                
Statement st=con.createStatement();         
ResultSet rs=st.executeQuery("select * from stockmaintenance" );
rs.next();
         %>
    <table>
        
        <tr>
            <td>productid:</td>
            <td><input type="text" name="pid" value="<%=rs.getString(1)%>"></td>
        </tr>
        <tr>
            <td>productname:</td>
            <td><input type="text" name="pname" value="<%=rs.getString(2)%>"></td>
        </tr>
            
        <tr>
            <td>stockavailable:</td>
            <td><input type="text" name="stock" value="<%=rs.getString(3)%>" />
        </tr>
        <tr>
            <td>limitvalue:</td>
            <td><input type="text" name="limit" value="<%=rs.getString(4)%>" />
        </tr>
        
    </table>
    <input type="submit" value="ok" />
                
    <input type="reset" value="can" />  
    </form>
    </body>
</html>

