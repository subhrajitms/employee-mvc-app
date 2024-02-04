<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	width: 400px;
	text-align: center;
}

h2 {
	margin-bottom: 20px;
	color: #333;
}

label {
	display: block;
	text-align: left;
	font-weight: bold;
	margin-bottom: 8px;
}

input, password {
	width: 100%;
	padding: 10px;
	margin-bottom: 16px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	padding: 12px 24px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<form:form modelAttribute="e" action="update" method="post">
		<h2>UPDATE</h2>
		<form:label path="id">ID</form:label>
		<form:input path="id" />
		<br>
		<form:label path="name">NAME</form:label>
		<form:input path="name" />
		<br>
		<form:label path="phone">PHONE</form:label>
		<form:input path="phone" />
		<br>
		<form:label path="email">EMAIL</form:label>
		<form:input path="email" />
		<br>
		<form:label path="password">PASSWORD</form:label>
		<form:password path="password" />
		<br>
		<form:label path="salary">SALARY</form:label>
		<form:input path="salary" />
		<br>
		<form:button>Update</form:button>
	</form:form>
</body>
</html>