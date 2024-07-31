<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Phone Book</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="addContact.jsp">Add Phone No</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link " href="veiwContact.jsp">View Contact</a>
            </li>
        </ul>

        <% User user = (User) session.getAttribute("user");
            if (user == null) {
        %>
        <form class="form-inline my-2 my-lg-0">
            <a href="login.jsp" class="btn btn-success">Login</a>
            <a href="register.jsp" class="btn btn-danger ml-2">Register</a>
        </form>
        <%
        } else {
        %>
        <form class="form-inline my-2 my-lg-0">
            <button class="btn btn-success"><%=user.getName()%></button>
            <a href="logout" class="btn btn-danger ml-2">Logout</a>
        </form>
        <%
            }
        %>
    </div>
</nav>
