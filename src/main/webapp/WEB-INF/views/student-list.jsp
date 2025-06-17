<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management System</title>
</head>
<body>
<h1>Student Management System</h1>
<a href="${pageContext.request.contextPath}/students/add">Add New Student</a>
<h2>All Students</h2>
<table border="1">
    <tr><th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Age</th><th>Actions</th></tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.course}</td>
            <td>${student.age}</td>
            <td>
                <a href="${pageContext.request.contextPath}/students/edit/${student.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/students/delete/${student.id}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>