<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="com.data1.Survey"%>
<%@ page import="com.data1.HomeController"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="css/addform.css">
<meta charset="ISO-8859-1">
<title>Update Survey</title>
</head>
<style>
input[type=text] {
	padding: 10px;
	margin: 10px 0;
	border: 0;
	box-shadow: 0 0 15px 4px rgba(0, 0, 0, 0.06);
	resize: vertical;
	border-radius: 15px;
}

button {
	padding: 10px;
	border: none;
	background-color: #3F51B5;
	color: #fff;
	font-weight: 600;
	border-radius: 5px;
}
</style>
<body>

	<div class="form" align="center">

		<form action="/save" method="post">

			<h4>Update todo tasks</h4>
			<div class="input-container ic2">
				<label for="id" class="placeholder">Id</label> <input id="id"
					class="input" placeholder=" " type="text" name="id"
					value="${survey.id}">
				<div class="cut"></div>

			</div>
			<div class="input-container ic2">
				<label for="name" class="placeholder">Name</label> <input id="name"
					class="input" placeholder=" " type="text" name="name"
					value="${survey.name}">
				<div class="cut"></div>
			</div>
			<div class="input-container ic2">
				<label for="role" class="placeholder">Role</label> <input id="role"
					class="input" placeholder=" " type="text" name="role"
					value="${survey.role}">
				<div class="cut"></div>
			</div>

			<div class="input-container ic2">
				<label for="feedback" class="placeholder">FeedBack</label> <input
					id="feedback" class="input" placeholder=" " type="text"
					name="feedback" value="${survey.feedback}">
				<div class="cut"></div>
			</div>

			<button type="submit" class="submit">submit</button>
		</form>
	</div>
</body>
</html>