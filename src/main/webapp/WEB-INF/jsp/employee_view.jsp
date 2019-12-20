<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Webpage</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >    
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap.min.css"> -->
 <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.jqueryui.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/scroller/2.0.1/css/scroller.jqueryui.min.css">   
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/w3.css">	
<link rel="stylesheet" type="text/css" href="/resources/css/table.css">	

<script type="text/javascript">
	function myFunction() {
		  window.open("empdownload");
		}
	</script>
</head>
<body>
<div>
	<div class="header">
	       <ul>
    			<li><h2>Welcome <div id="name" class="name"></h2></li>    			
				<li style="float: right;"><a href="logout"><p>LOGOUT</p></a></li>
			</ul>
      	</div>  
     
      <!-- main -->
      	<div style="height:440px">
      		<div class="main">	
      		<ul>
      		    <li>Employee</li>
      		    <li style="float: right"><button class="btn default" onclick="myFunction()">Download List</button></li>
      	<!--  	     ${sessionScope.email }   -->
     </ul>
      	<table id="example"class="display" style="width:100%" >
				<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Edit</th>
					<th>Delete</th>
				 
				</tr>
				</thead>
				<tfoot>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				</tfoot>
			
			</table>
      	</div>
      	</div>
      
           
 </div>
  


<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type=>
$(document).ready(function() {
    $('#example').DataTable({
    	"processing": true,
        "serverSide": true,
        "bLengthChange": false,
     	"ajax":{
   			"data": function(){
     		      var info = $('#example').DataTable().page.info();
			
     		      $('#example').DataTable().ajax.url(
     		          "employeePagination/"+(info.page + 1)+"/"+10
     		      );
     		   },
	      	},
         "columns": [
        	 
 			{ "data": "id" },
 			{ "data": "name" },
 			{ "data": "email"},
 			{ "data": "contact_no" },
 			{  
                "title": "edit",  
                "data": "id",  
                "searchable": false,  
                "sortable": false,  
                "render": function (data, type, full, meta) {  
                    return '<a href="/company/edit?id=' + data + '">Edit</a>';  
                } ,
 			},
 			{  
                "title": "delete",  
                "data": "id",  
                "searchable": false,  
                "sortable": false,  
                "render": function (data, type, full, meta) {  
                    return '<a href="/company/delete/' + data + '">Delete</a>';  
                } ,
 			}	
 			
 		],
 		"paging":true,
        "pageLength":10,
        "ordering":true,
        "order":[0,"asc"]
           
    });
   
} );

</script>
 <script src="/resources/js/company_intro.js"></script>
<%@include file="/resources/side/admin_sidebar.jsp" %>
</body>
</html>