<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h2 {
            margin: 10px 0;
            padding: 15px;
            background-color: #3498db;
            color: #fff;
            border-radius: 8px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
        }

        h2:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h2>Hello World!</h2>
    <h2><a href="open-save">Click To Add Employee</a></h2>
    <h2><a href="open-update">Click To Update Employee</a></h2>
    <h2><a href="open-view?view=findById">Click To Show Emp Details By Employee Id</a></h2>
    <h2><a href="open-view?view=verifyByPhone">Click To Show Emp Details By Employee PhoneNumber And Password</a></h2>
    <h2><a href="open-view?view=verifyByEmail">Click To Show Emp Details By Employee Email-Address And Password</a></h2>
</body>
</html>
