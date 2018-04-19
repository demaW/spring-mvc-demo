<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<style>
.error {
	color: red
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer form</title>
</head>
<body>
	<i>Fill out the form. Asterisk (*) is required.</i>
	<form:form action="processForm" modelAttribute="customer">
		First name: <form:input path="firstName" />
		<br>
		<br>
		Last name:(*) <form:input path="lastName" />
		<form:errors path="lastName" cssClass="error" />
		<br>
		Free passes: <form:input path="freePasses" />
		<form:errors path="freePasses" cssClass="error" />
		<br>
		<br>
		Postal code: <form:input path="postalCode" />
		<form:errors path="postalCode" cssClass="error" />
		<br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>
