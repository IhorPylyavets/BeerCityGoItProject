<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container">
	<br />
	<table class="table " style="align-items: center">
		<tr style="border-bottom: none;">
			<th colspan="2"><h4>Contact information</h4></th>
		</tr>
		<tr>
			<td style="border-top: none; border-bottom: none;">
				<p>Address: Eugene Konovaltsia street, 36D, Kiev, Kiev city</p>
				<p>tel.: + 38 (000) 123-45-67</p>
			</td>
			<td style="border-top: none; border-bottom: none;">
				<p>E-mail: <a href="mailto:goit.pub@gmail.com">beer.city.night.club@gmail.com</a></p>
				<p>Skype: beer.city.night.club</p>
			</td>
		</tr>
		<tr style="border-top: none;">
			<th colspan="2"><p>&copy; GoIt Ihor Pylyavets 2016</p></th>
		</tr>
	</table>
</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
