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




<style type="text/css">
body{
background-image:url("https://media.istockphoto.com/vectors/getting-employees-feedback-concept-icon-vector-id1297215327?k=20&m=1297215327&s=612x612&w=0&h=l-J4qeBGOD0o9x62HBfy1RgqzHLQRnvNWDQDOU8RTbw=");}
.container{
    margin-top: 170px;
    
  }
.header{
margin-left: 220px;
}
 </style>
</head>
<body>
<div class="container">
   <div class="header">
       <div class="card-header">
           <h4> <strong>ADMIN LOGIN</strong></h4>
       </div>
       <br>
         <form action="login" method="post">
             <div class="form-group row">
                 <label class="col-sm-2 col-form-label"><strong>Username</strong>
                  </label>
                  <div class="col-sm-10">
                     <input type="text" class="form-control" id="username" name="username" placeholder="username" required="required">
                     
                  
                  </div>
             </div>
             
             <br>
             <div class="form-group row">
                 <label class="col-sm-2 col-form-label"><strong> password</strong>
                  </label>
                  <div class="col-sm-10">
                     <input type="password" class="form-control" id="password" name="password" placeholder="password" required="required">
                     
                  
                  </div>
             </div>
             
             <br>
             <button class="btn">LOGIN</button>
             <br>
         </form>
   </div>

</div>

 


</body>
</html>