<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--page directive - used to specify content type of this page--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--taglib directive - used to import custom tags--%>

<html>
<head>
<%@include file="partials/head.jsp" %>
    <title>login</title>
</head>
<body>
<% if(request.getMethod().equalsIgnoreCase("post")){
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if(username.equals("admin") && password.equals("password")){
        response.sendRedirect("/profile.jsp");
    }
}
%>

<%@include file="partials/navbar.jsp"%>

<div class="container">
    <h3 class="mt-4">Login Form</h3>
    <form method="POST" action="/login.jsp">

        <label for="username">Username</label>
        <input id="username" name="username" type="text">
        <br>

        <label for="password">Password</label>
        <input id="password" name="password" type="password">
        <br>

        <input type="submit">
    </form>

    <%@include file="partials/scripts.jsp" %>
</div>
</body>
</html>