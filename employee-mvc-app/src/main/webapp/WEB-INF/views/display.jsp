<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .employee-details {
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            text-align: center;
        }

        h2 {
            color: #333;
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        span {
            color: #666;
        }
    </style>
</head>
<body>
    <div class="employee-details">
        <h2>Employee ID: <span>${e.getId()}</span></h2>
        <h2>Employee Name: <span>${e.getName()}</span></h2>
        <h2>Employee Phone: <span>${e.getPhone()}</span></h2>
        <h2>Employee Email: <span>${e.getEmail()}</span></h2>
        <h2>Employee Password: <span>${e.getPassword()}</span></h2>
        <h2>Employee Salary: <span>${e.getSalary()}</span></h2>
    </div>
</body>
</html>
