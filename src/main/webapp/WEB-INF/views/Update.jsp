<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.lms.bean.Library"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Employee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <style >
    #card{
     width: 40%;
    
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%)
    }
   ::placeholder {
  font-style:normal;
   
 } 
 

    </style>
    
    <script type="text/javascript">
    
function Validation() {
		
		var lid=document.getElementById("lid").value;
		var lname=document.getElementById("lname").value;
		var lauthor=document.getElementById("lauthor").value;
		var publisher=document.getElementById("publisher").value;
		var price=document.getElementById("price").value;
		var edition=document.getElementById("edition").value;
		
		
		if(lid==""){
			alert("Book id cannot be empty");
		}
		else if(lname==""){
			alert("Book name cannot be empty");
		}
		else if(lauthor==""){
			alert("Author  cannot be empty");
		}
		else if(publisher==""){
			alert("Publisher cannot be empty")
		}
		else if(price==""){
			alert("Price cannot be empty")
		}
		else if(edition==""){
			alert("Edition cannot be empty")
		}
		
	}
    </script>
    
</head>
<body class="container-fluid">

<div class=" container-fluid card bg-light mb-3"  id="card" style="max-width: 40rem;">
  <div class="card-header"><h4>Update Book Details</h4></div>
  <div class="card-body">
  
  <form  action="Fetch" method="post" class="container-fluid" modelAttribute="bean">
  
  <div class="container-fluid form-group">
  
    <label for="lid"><b>Book Id:</b></label>
    <select name="lid" class="input-field" aria-label="Default select example">
    
    <%
    List<Integer>idlist=(List<Integer>)request.getAttribute("Idlist");
    
    for(Integer i:idlist){
    	out.println("<option value='"+i+"'>"+i+"</option>");
    }
    %>
    </select>
  
  <input class="btn btn-secondary pull-right" type="submit" value="Fetch" name="button" />
  </form>
  <br><br>	
   <form  action="Updation" method="post" class="container-fluid" modelAttribute="bean">
   
  
   
   
   <label for="lid"><b>Book Id:</b></label><br>
    <input type="text" id="lid" class="form-control" name="lid" style="width: 18rem" readonly="readonly" placeholder="Enter Book Id"  value="${bean.lid}"><br>
    
    <label for="lname"><b>Book Name:</b></label><br>
    <input type="text" id="lname" class="form-control" name="lname" style="width: 18rem"  placeholder="Enter Book name" value="${bean.lname}"><br>
	
	 <label for="lauthor"><b>Book Author:</b></label><br>
    <input type="text" id="lauthor" class="form-control" name="lauthor" style="width: 18rem" placeholder="Enter Book author" value="${bean.lauthor}"><br>
    
    <label for="publisher">Publisher:</label><br>
    <input type="text" id="publisher" class="form-control" name="publisher" style="width: 18rem" placeholder="Enter publisher" required="required"  value="${bean.publisher}"><br>
    
    <label for="price">Price:</label><br>
    <input type="text" id="price" class="form-control" name="price" style="width: 18rem" placeholder="Enter price" required="required" value="${bean.price}"><br>
       
    <label for="edition">Edition:</label><br>
    <input type="text" id="edition" class="form-control" name="edition" style="width: 18rem" placeholder="Enter edition" required="required" value="${bean.edition}"><br>
    
    
    <input type="submit" id="but"  class="btn btn-warning" value="Update" name="button" style="width: 5rem" onmousedown="Validation()">
     
</form>

	</div>  
  </div>
</div>


</body>
</html>