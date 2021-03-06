<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<body>

<div class="container">

    <c:if test="${not empty msg}">
        <div class="alert alert-${css} alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>${msg}</strong>
        </div>p
    </c:if>

    <h1>Our Employees</h1>

    <form action="/client/searchEmployees${positionTitle}" class="form-inline pull-right" method="get">
        <div class="form-group">
            <input type="text" class="form-control" id="positionTitle" name="positionTitle" placeholder="Position title">
        </div>
        <spring:url value="/client/searchEmployees${positionTitle}" var="urlSearchEmployees" />
        <button class="btn btn-primary" onclick="location.href='${urlSearchEmployees}'">Search by Position</button>
    </form>

    <table class="table table-striped">
        <thead>
        <tr>
            <th>#ID</th>
            <th>Photo</th>
            <th>LastName</th>
            <th>FirstName</th>
            <th>Position</th>
        </tr>
        </thead>

        <c:set var="idCounter" value="1"/>
        <c:forEach items="${employeeMap}" var="employeeItem">
            <tr>
                <td><c:out value="${idCounter}"/></td>

                <c:choose>
                    <c:when test="${not empty employeeItem.value}">
                        <td style="vertical-align: middle" width="150px"> <img src="data:image/jpeg;base64,${employeeItem.value}" width="145" height="169"/> </td>
                    </c:when>
                    <c:otherwise>
                        <td style="vertical-align: middle" width="150px">  <img src="<c:url value="/image/imageNotFound.gif"/>" width="145" height="169"/> </td>
                    </c:otherwise>
                </c:choose>

                <td>${employeeItem.key.lastName}</td>
                <td>${employeeItem.key.firstName}</td>
                <td>${employeeItem.key.position.positionTitle}</td>

            </tr>
            <c:set var="idCounter" value="${idCounter+1}"/>
        </c:forEach>
    </table>

</div>

<jsp:include page="../fragments/footer.jsp" />

</body>
</html>
