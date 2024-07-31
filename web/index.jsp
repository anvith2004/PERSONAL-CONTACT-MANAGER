<%-- 
    Document   : index.jsp
    Created on : 20-Jul-2024, 2:05:33 pm
    Author     : 91861
--%>

<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <%@include file="component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        <%
//            Connection conn = DBConnect.getConn();
//            out.println(conn);
        %>
        <div class="container-fluid back-img text-center text-success">
            <h1>Welcome to Phone Book App</h1>
        </div>
    </body>
</html>
