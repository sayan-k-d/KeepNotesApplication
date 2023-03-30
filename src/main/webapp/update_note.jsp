<%@page import="com.todo.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.HelperClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all.jsp"%>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	Session s = HelperClass.getFactory().openSession();
	Transaction tr = s.beginTransaction();
	Note n = s.get(Note.class, id);
	%>
	<div class="container">
		<form action="UpdateServlet" method="post">
			<div class="mb-3">
				<label for="title" class="form-label fw-bold">Title</label> <input
					value="<%=n.getTitle()%>" name="u1" type="text"
					class="form-control text-white bg-dark " id="title"
					aria-describedby="emailHelp" placeholder="enter title here"
					required="required" />

			</div>

			<div class="mb-3">
				<label for="content" class="form-label fw-bold">Note Content</label>
				<textarea name="u2" id="content"
					class="form-control text-white bg-dark"
					placeholder="enter your note here" style="height: 300px;"
					required="required"><%=n.getContent()%></textarea>
				<input type="hidden" name="note_id" value="<%=n.getId()%>">
			</div>
			<div style="text-align: center">
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
		</form>
	</div>
</body>
</html>