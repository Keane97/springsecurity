<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><spring:message code="allagents.title" /> </title>
    </head>
    <spring:message code="welcome.message"/> ${uname}, <a href="/mvcCRUD/logout">Logout</a>
    <body>
        <table style="width:100%">
            <tr>
                <th align="left"><spring:message code="label.id" /></th>
                <th align="left"><spring:message code="label.name" /></th>
                <th align="left"><spring:message code="label.fax" /></th>
                <th align="left"><spring:message code="label.phone" /></th>
                <th align="left"><spring:message code="label.email" /></th>
                <th align="left"><spring:message code="label.datejoined" /></th>
                <th align="left"><spring:message code="label.sales" /></th>
                <th align="left"><spring:message code="label.actions" /></th>
            </tr>
            <c:forEach items="${agentList}" var="agent"> 
                <tr>
                    <td>${agent.agentId}</td>
                    <td>${agent.name}</td>
                    <td>${agent.fax}</td>
                    <td>${agent.phone}</td>
                    <td>${agent.email}</td>
                    <td><fmt:formatDate  dateStyle="full" value="${agent.dateJoined}" /></td>
                    <td><fmt:formatNumber type="currency" maxFractionDigits="2" value="${agent.averageSalesThisYear}" /></td>
                    <td>

                        <a href="/mvcCRUD/home/delete?id=${agent.agentId}"><spring:message code="label.delete" /></a>
                        <spring:url value="/home/edit?id=${agent.agentId}" var="editURL"/>
                        <a href="${editURL}"><spring:message code="label.edit" /></a>
                        
                    </td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>