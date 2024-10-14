<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

   <link rel="stylesheet" href="css/style.css" />
    <title>Note Taker Home Page</title>
    
  <%@include file ="all_js_css.jsp" %>
  </head>
  <body>
  <div class="container">
  <%@include file ="navbar.jsp" %>
  <br>
	<div class="card py-5" >
	<img alt="" class="img-fluid mx-auto" style="max-width: 300px;"
	src="img/notes.png">
	<h2 class="text-primary text-center text-uppercase mt-3">Start Taking Your Notes.</h2>
	<h6 class="text-dark text-center "> Click Button Start to Add Notes.</h6>
	<div class="container text-center">
	<button class="btn btn-outline-primary text-center">Start Here</button>
	</div>
	</div>
  </div>
   </body>
</html> 