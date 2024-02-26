<%@ page import="com.example.SpringBootUsingDB.Entity.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>

    <title>All Employee Details</title>
</head>
<body>
<h1>Employee Details</h1>
<form action="deleteEmployeeSuccess" method="get">
    <label>Employee Id :</label>
    <input type="number" name="id" id="id" required>
    <input type="submit" value="Search">
    </form>
    <div>
        <%
           boolean deletedEmployee = (boolean) request.getAttribute("deletedEmployee");
            Employee employee= (Employee) request.getAttribute("employee");

                    if(deletedEmployee){

        %>
            <h1> ${employee.name} deleted Successfully </h1>
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
