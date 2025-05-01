<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html lang="en">
<head>
    <title>List Todos Page</title>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* Neutral light gray for a clean aesthetic */
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <header class="mb-4">
            <h1 class="text-center text-primary">Enter Todo Details</h1>
        </header>
        <main>
            <form method="post" class="row g-3">
                <div class="col-md-6 offset-md-3">
                    <label for="description" class="form-label text-secondary">Description:</label>
                    <input type="text" name="description" id="description" class="form-control" placeholder="Enter a todo description" required>
                </div>
                <div class="col-12 text-center mt-3">
                    <button type="submit" class="btn btn-success btn-lg">Submit</button>
                </div>
            </form>
        </main>
    </div>
    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>