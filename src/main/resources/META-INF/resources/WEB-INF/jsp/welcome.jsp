<html>
<head>
    <title>Welcome Page</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* Subtle light gray background for better aesthetics */
        }
        .welcome-container {
            margin-top: 20%;
            padding: 30px;
            border: 1px solid #dee2e6;
            background-color: #ffffff; /* White card-like container */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }
        .btn-custom {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            text-transform: uppercase;
            border-radius: 5px;
        }
        .btn-custom:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center">
        <div class="welcome-container text-center">
            <h1 class="text-dark">Welcome ${name}!</h1>
            <p class="mt-4">
                <a href="list-todos" class="btn btn-custom">Manage Your Todos</a>
            </p>
        </div>
    </div>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>