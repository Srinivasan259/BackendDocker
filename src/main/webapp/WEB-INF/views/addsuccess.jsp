<%@page import="com.lms.bean.Library"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<style >

#div1{
margin-bottom: 50%;
position: absolute;
left: 35%;
}	

table {
  border-collapse: collapse;
  margin-left: -90px;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}

</style>
<head>
<meta charset="ISO-8859-1">
<title>Add Success</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<%="<br><div id=\"div1\" class=\"card card-body w-70 \"><h4>Record inserted Successfully</h4></div>" %>
 <br><br><br><br><br><br>
<table aria-describedby="mydesc"   id=div1 class="card card-body shadow p-3 mb-5 bg-white rounded" align="center" border=1 box-shadow: 10px 10px 5px  >
<tr>
<th>Book Id</th>
<th>Book Name</th>
<th>Book Author</th>
<th>Publisher</th>
<th>Price</th>
<th>Edition</th>
</tr>


<tr>
<td>${bean.lid}</td>
<td>${bean.lname}</td>
<td>${bean.lauthor}</td>
<td>${bean.publisher}</td>
<td>${bean.price}</td>
<td>${bean.edition}</td>
</tr>

 
</table>
	

</body>
</html>