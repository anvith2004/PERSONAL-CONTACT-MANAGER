<%-- 
    Document   : veiwContact
    Created on : 20-Jul-2024, 2:08:38 pm
    Author     : 91861
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.Contact"%>
<%@page import="com.dao.ContactDAO"%>
<%@page import="com.conn.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Contact</title>
        <%@include file="component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        <div class="alert alert-success" role="alert">
            Contact Successfully Updated...
        </div>
        <%            if (user == null) {
                session.setAttribute("inMSG", "Please Login...");
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="container">
            <div class="row p-4">

                <%
                    if (user != null) {
                        ContactDAO dao = new ContactDAO(DBConnect.getConn());
                        List<Contact> contact = dao.getAllContact(user.getId());

                        for (Contact c : contact) {
                %>
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body">
                            <h5>Name : <%= c.getName()%> </h5>
                            <p>Email : <%= c.getEmail()%></p>
                            <p>Phone No : <%= c.getPhno()%></p>
                            <div class="text-center">
                                <a href="editContact.jsp?cid=<%=c.getId()%>" class="btn btn-success btn-sm text-white">Edit</a>
                                <a  class="btn btn-danger btn-sm text-white">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>

            </div>
        </div>
    </body>
</html>
