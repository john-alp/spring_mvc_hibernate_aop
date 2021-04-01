<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: demiurg
  Date: 31.03.2021
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Titl2e</title>
</head>
<body>
<h2>Employee Info<h2>

<%--<form:form action=""> spring, action срабатывает, когда нажимаем кнопку Ок  и дергает метод saveEmployee   --%>

<form:form action="saveEmployee" modelAttribute="employee">

        <form:hidden path="id"/>
<%--use getter--%>
        Name    <form:input path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <br><br>
        Department <form:input path="department"/>
        <br><br>
        Salary  <form:input path="salary"/>
        <br><br>
<%-- use setter--%>
        <input type="submit" value="Ok"/>
    </form:form>

</body>
</html>
