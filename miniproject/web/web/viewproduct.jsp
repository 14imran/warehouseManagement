<%-- 
    Document   : viewproduct
    Created on : 8 Jul, 2019, 11:19:25 PM
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
                        
                    <th>sendto</th>
                        <th>receivedfrom</th>
                        
                
                    </tr>
                <%
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from productmove");
                    while(rs.next())
                    {
                        %>
                        <tr>
                        <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                                
                        </tr>
                                      
    <%
        }
%>
                </table>
            </body>
        </html>

