<%-- 
    Document   : updatedealer
    Created on : 10 Jul, 2019, 7:32:45 AM
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
        <form action="updatedealer_action.jsp">
            <%
                
Statement st=con.createStatement();         
ResultSet rs=st.executeQuery("select * from dealermaintenance" );
rs.next();
         %>
    <table>
         <tr>
            <td>companyname:</td>
            <td><input type="text" name="cname" value="<%=rs.getString(1)%>"></td>
        </tr>
        
        <tr>
            <td>productid:</td>
            <td><input type="text" name="pid" value="<%=rs.getString(2)%>"></td>
        </tr>
        <tr>
            <td>productname:</td>
            <td><input type="text" name="pname" value="<%=rs.getString(3)%>"></td>
        </tr>
            
        <tr>
            <td>code:</td>
            <td><input type="text" name="c" value="<%=rs.getString(4)%>" />
        </tr>
         <tr>
            <td>noofitemsinstock:</td>
            <td><input type="text" name="nstock" value="<%=rs.getString(5)%>"></td>
        </tr>
        
    </table>
    <input type="submit" value="ok" />
                
    <input type="reset" value="can" />  
    </form>
    </body>
</html>


