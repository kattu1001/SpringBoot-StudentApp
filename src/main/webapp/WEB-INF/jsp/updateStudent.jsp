<%--
  Created by IntelliJ IDEA.
  User: KPRASANG
  Date: 12-06-2023
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Update</title>
</head>
<body class="container">
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous">

<h2 style="text-align: center;color: mediumpurple">Update Details With Id</h2><hr/>
<form action="updateStudentDetail" method="post">

    <div class="form-group">
        <label>Student Name</label>
        <input name="sid" class="form-control" />
    </div>

    <div class="form-group">
        <label>Student Name</label>
        <input name="sname" class="form-control" />
    </div>

    <div class="form-group">
        <label>Student Email</label>
        <input name="semail" class="form-control"/>
    </div>

    <div class="form-group">
        <label>Student Marks</label>
        <input name="smarks" class="form-control"/>
    </div>
    <button class="btn btn-primary btn-outline">Update Details</button>

</form>
<c:if test="${student!=null}">
    <b class="text-danger"><c:out value="${msg}"/></b>
</c:if>
<a href="/student" ><button class="btn btn-info">Home</button></a>
<c:if test="${msg!=null}">
    <b class="text-danger"><c:out value="${msg}"></c:out></b>
    </br>
</c:if>
</body>
</html>
