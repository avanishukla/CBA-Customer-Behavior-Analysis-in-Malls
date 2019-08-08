<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<form method="post" action="j_spring_security_check">


User Name: <input type="text" name="username"><br>
Password: <input type="password" name="password"><br>
<input type="submit" >

<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />

</form>
</body>
</html>