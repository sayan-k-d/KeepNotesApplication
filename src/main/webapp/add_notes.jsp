<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@include file="all.jsp" %>
</head>
<body >
	<div class="container">
		<form action="AddNotes" method="post">
			<div class="mb-3">
				<label for="title" class="form-label fw-bold">Title</label>
				 <input
				 	name="t1"
					type="text" 
					class="form-control text-white bg-dark " 
					id="title"
					aria-describedby="emailHelp" 
					placeholder="enter title here"
					required="required"/>
			</div>

			<div class="mb-3">
				<label for="content" class="form-label fw-bold">Note Content</label>
				<textarea name="t2" id="content" class="form-control text-white bg-dark"
					placeholder="enter your note here" style="height: 300px;" required="required"></textarea>
			</div>
		<div style="text-align: center">
			<button type="submit" id="submit" class="btn btn-primary">Add</button>
			
			</div>
		</form>
		<!-- <script>
			$("#submit").click(function() {
				swal("Good job!", "You clicked the button!", "success");
			});
		</script> -->
	</div>
</body>
</html>