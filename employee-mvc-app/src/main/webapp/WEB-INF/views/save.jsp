<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>

    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
            font-size: 24px;
        }

        label {
            display: block;
            text-align: left;
            font-weight: bold;
            margin-bottom: 8px;
            color: #555;
        }

        input, password {
            width: 100%;
            padding: 12px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            padding: 14px 24px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
        }

        button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form:form modelAttribute="e" action="save" method="post">
        <h2>Add User</h2>

        <form:label path="name">Name</form:label>
        <form:input path="name" />

        <form:label path="phone">Phone</form:label>
        <form:input path="phone" />

        <form:label path="email">Email</form:label>
        <form:input path="email" />

        <form:label path="password">Password</form:label>
        <form:password path="password" />

        <form:label path="salary">Salary</form:label>
        <form:input path="salary" />

        <button type="submit">Add</button>
    </form:form>
</body>
</html>
