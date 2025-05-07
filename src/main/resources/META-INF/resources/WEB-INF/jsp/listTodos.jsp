
<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>
<div class="container mt-4">
	<h1>Your Todos are</h1>
	<table class="table table-bordered table-hover table-striped">
		<thead class="table-dark">
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>Is Done?</th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.description}</td>
					<td>${todo.targetDate}</td>
					<td>${todo.done ? 'Yes' : 'No'}</td>
					<td><div class="text-center">
							<a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a>
						</div></td>
					<td><div class="text-center">
							<a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a>
						</div></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">Add Todo</a>
</div>
<%@include file="common/footer.jspf"%>