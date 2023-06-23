<%--
  Created by IntelliJ IDEA.
  User: KPRASANG
  Date: 12-06-2023
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous">
<h2 style="text-align: center">Welcome to Student Home Page</h2><hr/>
<table class="container">
    <tr>

        <td><a href="student/saveStudent"><button class="btn btn-primary">Student Register</button></a></td>
        <td><a href="student/singleStudent"><button class="btn btn-info">Check Your Marks</button></a></td>
        <td><a href="student/deleteStudent"><button class="btn btn-danger">Remove Your Details</button></a></td>
        <td><a href="student/allStudents"><button class="btn btn-success">Get all Student Details</button></a></td>
        <td><a href="student/updateStudentDetail"><button class="btn btn-warning">Update Your Details</button></a></td>
    </tr>
    <hr/>
</table>
</body>
</html>
