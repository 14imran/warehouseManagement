<%-- 
    Document   : viewinventory
    Created on : 8 Jul, 2019, 11:21:16 PM
    Author     : taj goud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connection.jsp" %>
        <!DOCTYPE html>
        <html>
            <head>
               
                <title></title>
            </head>
            <body>
                 
                <table border="2">
                    <tr>
                        
                    <th>productid</th>
                        <th>productname</th>
                        <th>stockavailable</th>
                        <th>previousstock</th>
                
                    </tr>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from inventory");
                    while(rs.next())
                    {
                        %>
                        <tr>
                        <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                        </tr>
                                      
    <%
        }
%>
                </table>
            </body>
        </html>

