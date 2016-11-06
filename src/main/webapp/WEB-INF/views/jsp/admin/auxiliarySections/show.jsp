<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/admin_header.jsp" />

<body>

<div class="container">

    <c:if test="${not empty msg}">
        <div class="alert alert-${css} alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>${msg}</strong>
        </div>
    </c:if>

    <h1>All Auxiliary Sections</h1>

    <form action="/admin/positions">
        <spring:url value="/admin/positions" var="urlToPositions"/>
        <button class="btn btn-toolbar" onclick="location.href='${urlToPositions}'">To Positions</button>
    </form>
    <br />

    <form action="/admin/ingredients">
        <spring:url value="/admin/ingredients" var="urlToIngredients"/>
        <button class="btn btn-toolbar" onclick="location.href='${urlToIngredients}'">To Ingredients</button>
    </form>
    <br />

    <form action="/admin/categories">
        <spring:url value="/admin/categories" var="urlToCategories"/>
        <button class="btn btn-toolbar" onclick="location.href='${urlToCategories}'">To Categories</button>
    </form>
    <br />

    <form action="/admin/desks">
        <spring:url value="/admin/desks" var="urlToDesks"/>
        <button class="btn btn-toolbar" onclick="location.href='${urlToDesks}'">To Desks</button>
    </form>

</div>

<jsp:include page="../fragments/admin_footer.jsp" />

</body>
</html>