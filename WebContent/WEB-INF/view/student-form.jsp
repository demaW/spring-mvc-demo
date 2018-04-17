<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First name: <form:input path="firstName" />
		<br>
		<br>
		Last name: <form:input path="lastName" />
		<br>
		<br>
		Gender: <form:select path="gender">
			<form:option value="Male">Male</form:option>
			<form:option value="Female">Female</form:option>
			<form:option value="Apache Helicopter">Apache Helicopter</form:option>
		</form:select>

		<br>
		<br>
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C# <form:radiobutton path="favoriteLanguage" value="C#"/>
		Go <form:radiobutton path="favoriteLanguage" value="Go"/>
		
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>