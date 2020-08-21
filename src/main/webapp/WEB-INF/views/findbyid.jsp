<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
           <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find by id</title>
</head>
</head>
<body>
	<div class="container">
		<h1>Grade</h1>
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td>${grade.name}</td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td>${grade.type}</td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td>${grade.score}</td>
			</tr>
			<tr>
				<th scope="row">Total</th>
				<td>${grade.total}</td>
			</tr>
			<tr>
				<th scope="row">Percentage</th>
				<td><fmt:formatNumber value="${grade.percentage}" pattern="0.00"/>%</td> 
			</tr>
		</table>
		<p></p>
		<a class="btn link" href="/grades">Back to List</a>
	</div>
</body>
</html>