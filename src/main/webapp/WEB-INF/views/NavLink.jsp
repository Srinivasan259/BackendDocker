<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <style >
    .nav-link{
    color: white;
    }
    h3{
    font-style: italic;
    padding-left: 50px;
    border-radius: 3px;
    margin-left: 50px;
    color: white;
    }
    #logo{
    width: 80px;
    height: 50px;
   	margin-left: 150px;
   	 border-radius: 20%;
    }
    </style>
</head>

<body >
	<div class="container-fluid ">
	<nav class="navbar" style="background-color:maroon;">
  	<ul class="nav nav-pills" >
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="Home" target="frame1">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Add" target="frame1">Insert</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Search" target="frame1">Search</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Update" target="frame1">Update</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Delete" target="frame1">Delete</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="FindAll" target="frame1">FindALL</a>
  </li>
  
   <li class="nav-item">
   <h3 >Library Management System</h3>
  </li>
  
  
 
  </ul>
	</nav>
	</div>
</body>
</html>