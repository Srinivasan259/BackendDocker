  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.lms.bean.Library" %>
    
	<%@ page isELIgnored="false" %>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find All</title>

<style >

body{
margin-left: -100px;
}

#div1{
margin-bottom: 50%;
position: absolute;
left: 18%;
top: 10%;
}	
 #card{
     width: 50%;
    
  position: absolute;
  top: 50%;
  left:10%;
  transform: translate(-50%, -50%)
    }
table {
 width: 80%;
  border-collapse: collapse;
  margin-left:-100px;
  padding-left: 10px;
}

th, td {
  text-align: left;
  padding: 8px2
}

tr:nth-child(even) {background-color: #f2f2f2;}

</style>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>	

<body>


<table aria-describedby="mydesc"   id=div1 class="card card-body shadow-lg p-3 mb-5 bg-white rounded"; border=3; box-shadow: 10px 10px 5px  >

<form action="Save" method="post" modelAttribute="bean">

<tr>
<th scope="col"><h3>Insert here</h3></th>
</tr>

<tr>

<td><input type="text" class="form-control"value="Auto Generative Id" readonly="readonly"></td>
<td><input type="text" class="form-control" name="lname"  placeholder="Enter book name" ></td>
<td><input type="text" class="form-control" name="lauthor" placeholder="Enter author name"></td>
<td><input type="text" class="form-control" name="publisher"  placeholder="Enter publisher" ></td>
<td><input type="text" class="form-control" name="price"  placeholder="Enter price" ></td>
<td><input type="text" class="form-control" name="edition"  placeholder="Enter edition" ></td>


<td>

	<input type="submit" id="but"  class="btn btn-success pull-right" value="Save" name="button" style="width: 5rem" onmousedown="Validation()">
	
</td>

</tr> 

 </form>

<tr>

<th scope="col">Book Id</th>
<th scope="col">Book Name</th>
<th scope="col">Book Author</th>
<th scope="col">Publisher</th>
<th scope="col">Price</th>
<th scope="col">Edition</th>
<th scope="col">Update</th>	
<th scope="col">Delete</th>
</tr>
<c:forEach items="${Idlist}" var="Idlist" >

<form action="EditForm" modelAttribute="bean">
<tr>

<td><input type="text" class="form-control" name="lid" value="${Idlist.lid}" readonly="readonly"></td>
<td><input type="text" class="form-control" name="lname"  value="${Idlist.lname}" ></td>
<td><input type="text" class="form-control" name="lauthor" value="${Idlist.lauthor}"></td>
<td><input type="text" class="form-control" name="publisher" value="${Idlist.publisher}"></td>
<td><input type="text" class="form-control" name="price" value="${Idlist.price}"></td>
<td><input type="text" class="form-control" name="edition" value="${Idlist.edition}"></td>

<td>

<!--  <a href="EmployeeServletFile?button=Update" ><button id="but"  class="btn btn-warning btn-sm pull-right"  value="Update" name="button" style="width: 5rem">Update</button></a>

<a href="EmployeeServletFile?button=Delete" ><button id="but"  class="btn btn-danger btn-sm pull-right"  value="Delete" name="button" style="width: 5rem">Delete</button></a>-->

    <input type="submit" id="but"  class="btn btn-warning btn-sm pull-right" value="Edit" name="button" style="width: 5rem" onmousedown="Validation()">

</td>	
 </form>
    
    <td>
      <a href="Remove?lid=${Idlist.lid}"><input type="submit" value="Remove" class="btn btn-danger btn-sm pull-right"/></a>
    
    
	<!--  <input type="submit" id="but"  class="btn btn-danger btn-sm pull-right" value="Delete" name="button" style="width: 5rem" onmousedown="Validation()">-->
	
	</td>	
</tr>

</c:forEach>



 



</table>

</body>
</html>