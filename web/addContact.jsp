<%-- 
    Document   : addContact.jsp
    Created on : 20-Jul-2024, 2:08:03 pm
    Author     : 91861
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Contact</title>
        <%@include file="component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>

        <%            if (user == null) {
                session.setAttribute("inMSG", "Please Login...");
                response.sendRedirect("login.jsp");
            }
        %>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 offset-md-3" style="margin-top: 50px;">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center text-success">Add Contact No</h4>

                            <% String succMsg = (String) session.getAttribute("succMsg");
                                String failMsg = (String) session.getAttribute("failMsg");
                                if (succMsg != null) {
                            %>
                            <p class="text-success text-center"><%=succMsg%></p>
                            <%
                                    session.removeAttribute("succMsg");
                                }

                                if (failMsg != null) {
                            %>
                            <p class="text-danger text-center"><%=failMsg%></p>
                            <%
                                    session.removeAttribute("failMsg");
                                }
                            %>

                            <form action="addContact" method="post" >

                                <%
                                    if (user != null) {
                                %>
                                <input type="text" value="<%= user.getId()%>" name="userid">
                                <%}
                                %>


                                <div class="form-group">
                                    <label for="exampleInputEmail1">Enter Name</label>
                                    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Phone No</label>
                                    <input name="phno" type="text" class="form-control" id="exampleInputPassword1" >
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Save </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
