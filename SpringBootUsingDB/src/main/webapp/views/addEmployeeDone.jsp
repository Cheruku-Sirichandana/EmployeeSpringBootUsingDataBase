<%@ page import="com.example.SpringBootUsingDB.Entity.Employee" %>
<%@page language="java" %>
<html>
<head>
    <title>add employee</title>

</head>
    <body>
    <%
        Employee employee= (Employee) request.getAttribute("addEmployee");

        if(employee==null){
    %>
        <h1>Employee Details</h1>
        <form action="addEmployeeSuccess">
            <label for="id"> Enter Id : </label>
            <input type="number" id="id" name="id" value=${id}  readonly>
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
            <input type="submit" value="Add Employee">
        </form>
    <% } else { %>
        <h1> Employee Id ${employeeId} Already Exists </h1>
    <% } %>
    <form action="/home">
        <input type="submit" value="Go to Home Page">
    </form>
    </body>
</html>