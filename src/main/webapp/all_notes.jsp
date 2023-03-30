<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.todo.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.HelperClass"%>
<%@page import="org.hibernate.Session"%>
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
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1 class="text-uppercase">All Notes:</h1>
		<div class="row">
			<div class="col-12">
				
				<%
				Session s = HelperClass.getFactory().openSession();
				try
				{
					String n_id=request.getAttribute("n_id").toString();
					if(n_id!=null)
					{
				%>
				<script>
                $(document).ready(function(){
						swal("Update Complete!","Note Updated Successfully", "success");
                });
                </script>
				<%
					}
					
				}
				catch(Exception e){}
				finally
				{
					List<Note> list = s.createQuery("from Note", Note.class).list();
					for (Note n : list) 
					{
				%>
				<div class="card mt-3 px-4">
					<img src="img/notes.png" class="card-img-top m-4" style="max-width: 100px;">
					<div class="card-body">
						<h5 class="card-title"><%= n.getTitle() %></h5>
						<p class="card-text"><%= n.getContent() %></p>
						<a href="DeleteServlet?id=<%=n.getId() %>" class="btn btn-danger">Delete</a>
						<a href="update_note.jsp?id=<%=n.getId() %>" class="btn btn-warning">Update</a>
					</div>
				</div>

				<%
					}
					s.close();
				}
				%>
				<%
				try
				{	
					String del_id=request.getAttribute("del_id").toString();
					if(del_id!=null)
					{
						%>
						
						<script>
		                $(document).ready(function(){
								swal("Note Deleted Successfully!","", "success");
		                });
		                </script>
						<%
						
					}
				}
				catch(Exception e)
				{
				
				} 
				%>
			</div>
		</div>
	</div>
</body>
</html>