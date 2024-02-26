<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>

    <title>All Employee Details</title>
</head>
<body>
<h1>Employee Details</h1>
    <form action="searchEmployeeDone">
        <label for="id" >Employee Id :</label>
        <input type="text" id="id"  name="id">
        <input type="submit" value="Search">
    </form>
    <form action="/home">
        <input type="submit" value="Go to Home Page">
    </form>
</body>
</html>
