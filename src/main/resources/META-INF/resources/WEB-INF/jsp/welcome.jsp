<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>
<div class="container d-flex justify-content-center align-items-center vh-100" style="background-color: #f8f9fa;">
    <div class="text-center p-4 border rounded shadow-lg" style="background-color: #ffffff; color: #343a40;">
        <h1 class="fw-bold" style="color: #007bff;">Welcome ${name}!</h1>
        <p class="mt-4">
            <a href="list-todos" class="btn btn-lg" style="background-color: #28a745; color: white;">Manage Your Todos</a>
        </p>
    </div>
</div>
<%@include file="common/footer.jspf"%>