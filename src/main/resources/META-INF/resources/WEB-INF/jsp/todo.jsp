
<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>
<div class="container mt-4">
	<header class="mb-4">
		<h1 class="text-center text-primary">Enter Todo Details</h1>
	</header>
	<main>
		<form:form method="post" class="row g-3" modelAttribute="todo">
			<div class="col-md-6 offset-md-3">
				<fieldset>
					<label for="description" class="form-label text-secondary">Description:</label>
					<form:input type="text" path="description" name="description"
						id="description" cssClass="form-control"
						placeholder="Enter a todo description" />
					<form:errors path="description" cssClass="text-danger" />
				</fieldset>

				<fieldset>
					<label for="targetDate" class="form-label text-secondary">Description:</label>
					<form:input type="text" path="targetDate" name="targetDate"
						id="targetDate" cssClass="form-control" placeholder="yyyy-MM-dd" />
					<form:errors path="targetDate" cssClass="text-danger" />
				</fieldset>

				<form:input type="hidden" path="id" />
				<form:input type="hidden" path="done" />
			</div>
			<div class="col-12 text-center mt-3">
				<button type="submit" class="btn btn-success btn-lg">Submit</button>
			</div>
		</form:form>
	</main>
</div>
<%@include file="common/footer.jspf"%>
<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd'
	});
</script>