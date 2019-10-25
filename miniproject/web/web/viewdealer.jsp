<%-- 
    Document   : viewdealer
    Created on : 8 Jul, 2019, 11:08:26 PM
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
                        
                    <th>companyname</th>
                        <th>productid</th>
                        <th>productname</th>
                        <th>code</th>
                        <th>noofitemsinstock</th>
                
                    </tr>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from dealermaintenance");
                    while(rs.next())
                    {
                        %>
                        <tr>
                        <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
                        </tr>
                                      
    <%
        }
%>
                </table>
            </body>
        </html>
