<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student confirmation</title>
</head>
<body>
<h2>Student: ${student.firstName}  ${student.lastName} </h2>
<br>
<h3>Gender: ${student.gender}</h3>
<br>
<h3>Favorite language: ${student.favoriteLanguage}</h3>
</body>
</html>