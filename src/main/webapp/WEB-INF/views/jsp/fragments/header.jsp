<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<head>
	<title>Spring MVC Form Handling Example</title>

	<spring:url value="/resources/core/css/hello.css" var="coreCss" />
	<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${coreCss}" rel="stylesheet" />
</head>

<spring:url value="/" var="urlHome" />
<spring:url value="/client/menu" var="urlMenu" />
<spring:url value="/client/personnel" var="urlPersonnel" />
<spring:url value="/client/booking" var="urlBooking" />
<spring:url value="/client/contacts" var="urlContacts" />
<spring:url value="/login" var="urlLogin" />

<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="${urlHome}">Beer City</a>
		</div>

		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="${urlLogin}">LogIn</a>
		</div>

		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="${urlContacts}">Contacts</a>
		</div>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="${urlBooking}">Booking</a>
		</div>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="${urlPersonnel}">Personnel</a>
		</div>
		<div class="navbar-header navbar-right">
			<a class="navbar-brand" href="${urlMenu}">Menus</a>
		</div>

	</div>
</nav>