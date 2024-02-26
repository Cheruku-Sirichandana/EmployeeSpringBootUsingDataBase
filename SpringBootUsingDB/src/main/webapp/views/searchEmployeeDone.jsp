<%@ page import="com.example.SpringBootUsingDB.Entity.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>

    <title>All Employee Details</title>
</head>
<body>
<h1>Employee Details</h1>
<form action="searchEmployeeDone" method="get">
    <label>Employee Id :</label>
    <input type="text" name="id" id="id" >
    <input type="submit" value="Search">
</form>
<div>
    <%


     Employee searchEmployee = (Employee) request.getAttribute("searchEmployee");


        if (searchEmployee != null) {
    %>
    <p>Employee ID : ${searchEmployee.getId()} </p>
    <p> Name   : ${searchEmployee.getName()} </p>
    <p>Role         :  ${searchEmployee.getRole()}</p>
        <p>Email    :  ${searchEmployee.getEmail()}</p>
    <%
    } else {
    %>
    <h1> Employee Id Not found </h1>
    <%
        }
    %>
    <form action="/home">
        <input type="submit" value="Go to Home Page">
    </form>
</div>
</body>
</html>
