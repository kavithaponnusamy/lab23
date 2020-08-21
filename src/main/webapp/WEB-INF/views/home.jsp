<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grade</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Grades</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Type</th><th>Score</th><th>Total</th><th>Percentage</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="classroom" items="${grades}">
				<tr>
					<td><a href="/findbyid?id=${classroom.id}">${classroom.name}</a></td>	
					<td><c:out value="${classroom.type}"></c:out></td>
					<td><c:out value="${classroom.score}"></c:out></td>
					<td><fmt:formatNumber value="${classroom.total}" pattern="0.00"/></td>
					<td><fmt:formatNumber value="${classroom.percentage}" pattern="0.00"/>%</td> 
					<td><a href="/delete-form?id=${classroom.id}&name=${classroom.name}">Delete</a></td>		
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<p> </p>
		<p>Overall Grade: <fmt:formatNumber value="${overAllPercentage}" pattern="0.00"/>%</p>
		<p></p>
		<a href="/grades/add-form">Add a Grade</a>
	</div>

</body>
</html>