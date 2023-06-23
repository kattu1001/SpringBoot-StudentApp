<%--
  Created by IntelliJ IDEA.
  User: KPRASANG
  Date: 12-06-2023
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>register</title>
</head>
<body class="container">
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous">
<h2 style="text-align: center;color: cornflowerblue">Welcome to register page</h2><hr/>
<form:form action="saveStudent" method="post" modelAttribute="student">

                <div class="form-group">
                    <label>Student Name</label>
                    <form:input path="sname" class="form-control" />
                    <b class="text-danger"><form:errors path="sname"/></b>
                </div>

                <div class="form-group">
                <label>Student Email</label>
                <form:input path="semail" class="form-control"/>
                <b class="text-danger"><form:errors path="semail"/></b>
                </div>

                <div class="form-group">
                <label>Student Marks</label>
                <form:input path="smarks" class="form-control"/>
                    <b class="text-danger"><form:errors path="smarks" cssClass="error"/></b>
                </div>

                <br/>
                <button class="btn mb-2 btn-success">Register</button><hr/>

</form:form>

<c:if test="${savedStudent!=null}">
    <h4 style="text-align: center; color: green;">
        Dear,
        <c:out value="${savedStudent.sname}" />
        , Your Registration is Success!
    </h4>
</c:if>
<a href="/student" ><button class="btn mb-2 btn-info">Return to StudentHome</button></a>
</body>
</html>
