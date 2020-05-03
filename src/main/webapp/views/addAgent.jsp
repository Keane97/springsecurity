<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>  
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
    <head>
    </head>

    <h3><spring:message code="addagentform.header" /></h3>

    <form:form method="POST" action="/mvcCRUD/home/addAgent" modelAttribute="agent">

        <table>
            <tr>
                <td><form:label path="name"><spring:message code="label.name" /></form:label></td>
                <td><form:input path="name"/></td>
                <td style="color:red"><form:errors path="name"/></td>
            </tr>
            <tr>
                <td><form:label path="phone"><spring:message code="label.phone" /></form:label></td>
                <td><form:input path="phone"/></td>
                <td style="color:red"><form:errors path="phone"/></td>
            </tr>
            <tr>
                <td><form:label path="fax"><spring:message code="label.fax" /></form:label></td>
                <td><form:input path="fax"/></td>
                <td style="color:red"><form:errors path="fax"/></td>
            </tr>
            <tr>
                <td><form:label path="email"><spring:message code="label.email" /></form:label></td>
                <td><form:input path="email"/></td>
                <td style="color:red"><form:errors path="email"/></td>
            </tr>
            <tr>
                <td><form:label path="username"><spring:message code="label.username" /></form:label></td>
                <td><form:input path="username"/></td>
                <td style="color:red"><form:errors path="username"/></td>
            </tr>
            <tr>
                <td><form:label path="password"><spring:message code="label.password" /></form:label></td>
                <td><form:input path="password"/></td>
                <td style="color:red"><form:errors path="password"/></td>
            </tr>
            <tr>

                <td><form:label path="dateJoined"><spring:message code="label.datejoined" /></form:label></td>
                <td><form:input type="date" path="dateJoined"/></td>
                <td style="color:red"> <form:errors path="dateJoined"/> </td>

            </tr>
            <tr>
                <td><form:label path="averageSalesThisYear"><spring:message code="label.sales" /></form:label></td>
                <td><form:input path="averageSalesThisYear"/></td>
                <td style="color:red"> <form:errors path="averageSalesThisYear"/> </td>
            </tr>
            <tr>
                <spring:message code="submit.button" var="labelSubmit"></spring:message>
                <td><input type="submit" value="${labelSubmit}"/></td>
            </tr>
        </table>
    </form:form>


</html>