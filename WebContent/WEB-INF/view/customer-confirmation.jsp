<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer confirmation</title>
</head>
<body>
<h2>Customer: ${customer.firstName}  ${customer.lastName} </h2>
<br>
<h3>Free passes: ${customer.freePasses} </h3>
<br>
<h3>Postal code: ${customer.postalCode} </h3>

<br>
<h3>Course code: ${customer.courseCode} </h3>
</body>
</html>