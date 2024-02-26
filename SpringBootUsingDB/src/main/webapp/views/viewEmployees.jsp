<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.example.SpringBootUsingDB.Entity.Employee" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Employees</title>
</head>
<body>
    <h1>All Employees</h1>
    <form action="viewEmployees">
    <table>
        <thead>
            <tr>
                <th>Employee ID</th>
                <th> Name</th>
                <th>Role</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
<%
              List<Employee> employeeList= (List<Employee>) request.getAttribute("viewEmployees");
for (Employee employee : employeeList) {
          %>
              <tr>
                  <td><%= employee.getId() %></td>
                  <td><%= employee.getName() %></td>
                  <td><%= employee.getRole() %></td>
                  <td><%= employee.getEmail() %></td>
              </tr>
          <%
              }
          %>
        </tbody>
    </table>
    </form>
    <form action="/home">
            <input type="submit" value="Go to Home">
        </form>
</body>
</html>


