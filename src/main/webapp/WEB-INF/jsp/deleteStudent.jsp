<%--
  Created by IntelliJ IDEA.
  User: KPRASANG
  Date: 12-06-2023
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Remove Student</title>
</head>
<body class="container">

<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous">
<h2 style="text-align: center;color: coral">Delete Your Details</h2><hr/>
<form action="" method="post">
    <label>Student ID</label>
    <input class="form-control " name="sid"/>
    <button class="btn btn-primary mt-2">Submit</button>
    <button class="btn btn-danger mt-2" type="reset">Cancel</button>
</form>
<a href="/student" ><button class="btn mb-2 btn-info">Home</button></a>
<hr/>

<h5><c:out value="${message}"/></h5>

</body>
</html>
