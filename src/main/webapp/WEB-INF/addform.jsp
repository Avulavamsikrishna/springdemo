<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <%@ page isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
 <title>Admin login </title>

<style type="text/css">

 .container{
   
    margin-top: 150px;
    
  }
  .card
  { 
    width:90px;
  }
  </style>





</head>

<div class="container" >
    <div class="card" style="width:20cm;">
    
       <div class=" card-header" style="align-content: center;">
       <strong>ADD NEW DETAILS</strong>
       
       </div>
       
          <div class="card-body">
             <form action="/save" method="post">
             
               <!--   <div class="row mb-3">
                   <label class="col-sm-2 col-form-label"><strong>ID</strong></label>
                     <div class="col-sm-10">
                      <input type="text" class="form-control" id="id" name="id" placeholder="Enter ID">
                        </div>
                        </div> -->
                        
                        
                        <div class="row mb-3">
                   <label class="col-sm-2 col-form-label"><strong>NAME</strong></label>
                     <div class="col-sm-10">
                      <input type="text" class="form-control" id="name" name="name" placeholder="Enter the name">
                        </div>
                     </div>
                     
                     <div class="row mb-3">
                   <label class="col-sm-2 col-form-label"><strong>ROLE</strong></label>
                     <div class="col-sm-10">
                      <input type="text" class="form-control" id="" name="Role" placeholder="Enter the Role">
                        </div>
                        </div>
                   <div class="row mb-3">
                   <label class="col-sm-2 col-form-label"><strong>FEEDBACK</strong></label>
                     <div class="col-sm-10">
                      <input type="text" class="form-control" id="" name="feedback" placeholder="Enter the  feedback">
                        </div>
                     </div>
                   <button type="submit" class="btn btn-success" style="align-content: center;">
                   
                   <strong>STORE</strong></button>
                 
          </form>
</div>
</div>
</div>
</body>
</html>