<%@ page import="com.example.SpringBootUsingDB.Entity.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>

    <title>All Employee Details</title>
</head>
<body>
    <%
        Employee updateEmployee = (Employee) request.getAttribute("updateEmployee");
    %>
    <div>
        <%
            if (updateEmployee!= null) {
        %>
        <form action="updateEmployeeSuccessfully">
            <h1>Enter Employee Details</h1>
            <br>
            <label for="id">Employee Id : </label>
            <input type="text" id="id" name="id" value=${id}  readonly>
            <br>
            <label for="name">Enter First Name : </label>
            <input type="text" id="name" name="name" required>
            <br>
            <label for="role">Enter Role : </label>
            <input type="text" id="role" name="role" required>
            <br>
            <label for="email"> Enter Email : </label>
                        <input type="text" id="email" name="email" required>
                        <br>
            <input type="submit" value="Update">
        </form>
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
