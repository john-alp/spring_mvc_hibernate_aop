<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: demiurg
  Date: 30.03.2021
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spring Title</title>
</head>
<body>
<h2>All Employees</h2>
<table>
    <%--    table row--%>
    <tr>
        <%--        table header--%>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>

    </tr>

    <c:forEach var="emp" items="${allEmps}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>
        <%--link deleteButton--%>
        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>
        </c:url>

        <tr>
                <%--      td - table data--%>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>

            <td>
                    <%--  Добавляем кнопку Update--%>
                <input type="button" value="Update"
                       onclick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete"
                       onclick="window.location.href='${deleteButton}'"/>

            </td>
        </tr>

    </c:forEach>

</table>
<br>

<%--  Добавляем кнопку Add--%>
<input type="button" value="Add"
       onclick="window.location.href = 'addNewEmployee'"/>

<br>
</body>
</html>
