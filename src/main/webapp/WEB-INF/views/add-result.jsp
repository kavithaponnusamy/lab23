<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Grade Added</h3>
<p>The grade was added to the database</p>
<h4>Details</h4>

<p><strong>Name: </strong><c:out value="${name}"/></p>
<p><strong>Type: </strong><c:out value="${type}"/></p>					
<p><strong>Score:</strong> <fmt:formatNumber  value="${score}" pattern="0.00"/></p>			
<p><strong>Total:</strong> <fmt:formatNumber value="${total}" pattern="0.00"/></p>	
<a href="/grades">Return to Grade List</a>
</body>
</html>