<%--
  Created by IntelliJ IDEA.
  User: KPRASANG
  Date: 12-06-2023
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>All Students</title>
</head>
<body class="container">
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
      crossorigin="anonymous">

<h2 style="text-align: center;color: blue">All Students Details</h2><hr/>
<a href="/student" ><button class="btn mb-2 btn-info">Home</button></a>
<c:if test="${student.size()!=0}">
    <table class="table" border="solid">
        <thead>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Student Mail</th>
            <th>Student Marks</th>
        </tr>
        </thead>


        <c:forEach items="${student}" var="st">
            <tr>
                <td><c:out value="${st.sid}"></c:out></td>
                <td><c:out value="${st.sname}"></c:out></td>
                <td><c:out value="${st.semail}"></c:out></td>
                <td><c:out value="${st.smarks}"></c:out></td>
            </tr>
        </c:forEach>

    </table>

</c:if>

<c:if test="${student.size()==0 }">
    <h3 class="text-success text-center">Sorry, No Customers are
        available</h3>
</c:if>
</body>
</html>
