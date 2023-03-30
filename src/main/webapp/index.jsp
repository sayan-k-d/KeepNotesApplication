<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <title>Note Taker</title>
     <%@include file="all.jsp" %>
  </head>
  <body>
  <div class='container'>
  	 <%@include file="navbar.jsp" %>
  	 <h1>This is Home Page</h1>
  	 <%
  	 	try
  	 	{	
  	 		String c_id=request.getAttribute("c_id").toString();
  	 		if(c_id!=null)
  	 		{
  	 	%>
  	 	<script>
                $(document).ready(function(){
						swal("Good Job!","Note Added Successfully", "success");
                });
        </script>
  	 		<!-- <script>
				$document.reqdy(Function(){
						swal("Good Job!","Note Added Successfully","success")
					});
  	 		</script> -->
  	 	<%		
  	 	
  	 		}
  	 	}
  	 	catch(Exception e)
  	 	{
  	 		
  	 	}
  	 	finally
  	 	{
  	 %>
  	 
  	 <%	} %>
  </div>
  </body>
</html>
