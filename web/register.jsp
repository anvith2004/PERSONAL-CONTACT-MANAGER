<%-- 
    Document   : resgister.jsp
    Created on : 20-Jul-2024, 2:08:26 pm
    Author     : 91861
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <%@include file="component/allCss.jsp" %>
    </head>
    <body>
        <%@include file="component/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 offset-md-3" style="margin-top: 50px;">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center text-success">Registartion Page</h4>
                            <% String SuccMsg = (String) session.getAttribute("SuccMsg");
                               String ErrorMsg = (String) session.getAttribute("ErrorMsg");
                            if (SuccMsg != null) {
                            %>
                            <p class="text-success text-center"><%=SuccMsg%></p>
                            <%
                                session.removeAttribute("SuccMsg");
                                }

                                if (ErrorMsg != null) {
                            %>
                              <p class="text-danger text-center"><%=ErrorMsg%></p>
                            <%
                                session.removeAttribute("ErrorMsg");
                                }
                            %>
                            <form action="register" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Enter Name</label>
                                    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" >
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="password" type="password" class="form-control" id="exampleInputPassword1" >
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
