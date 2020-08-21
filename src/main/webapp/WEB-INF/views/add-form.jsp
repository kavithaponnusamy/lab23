<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/temp.css" rel="stylesheet" /> 
</head>
<body>
	<div class="container">
		<h1>Add a Grade</h1>
		<form action="/grades/add-form" method="post">
		<p>Name <input type="text" name="name" autofocus /></p>
		<label for "type">Type</label> 
				<select id="type" name="type">
				<option value="assignment">Assignment</option>
				<option value="quiz">Quiz</option>
				<option value="exam">Exam</option>		
				</select>
		<p>Score <input type="number" name="score" /></p>
		<p>Total <input type="number" name="total"/></p>
		
		<button type="submit" class="btn btn-primary">Add</button>
		<a href="/grades">Cancel</a>
		</form>
	</div>
</body>
</html>