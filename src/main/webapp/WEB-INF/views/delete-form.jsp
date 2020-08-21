<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Delete <c:out value="${name}"></c:out>?</h1>
<p>Are you sure you want to delete this grade?</p>
<p><c:out value="${name}"></c:out></p>
<a href="/grades">No. go back</a> | <a href="/grades/delete?id=${id}">Yes. Delete</a>
	
</body>
</html>