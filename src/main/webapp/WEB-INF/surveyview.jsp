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
Body{
background-image: url("https://www.tinypulse.com/hubfs/Optimized-iStock_000057715676_Small.jpg");

}
 .container{
    margin-left: 130px;
    margin-top: 130px;
    
  }
.logoutbutton{
margin-top:40px;
margin-right:60px;
}
</style>
</head>
<body>

<br>
  <div class="container">
      <div class="card" style="height:60px">
       <div class="card-header" style="height:60px">
            <h3 style="text-align:center">Online Employee Feedback</h3>
  </div>
  </div>
  <br>
       <table class="table table-dark table-striped">
          <thead>
          <tr>
           <th scope="col" style="text-align: center">ID</th> 
           <th scope="col" style="text-align:center" >Name</th>
           <th scope="col" style="text-align:center" >Role</th>
           <th scope="col" style="text-align:center" >FeedBack</th>
          </tr>
          </thead>   
               <tbody>
                   <c:forEach items="${surveylist}" var="survey">
                      <tr>
                        <td class="table-dark" style="text-align: center">${survey.id }</td>
                        <td class="table-dark" style="text-align: center">${survey.name }</td>
                        <td class="table-dark" style="text-align: center">${survey.role}</td>
                        <td class="table-dark" style="text-align: center">${survey.feedback}</td>
                        
                        <td class="table-dark" style="text-align: center">
                        <a href="/deletebyid/${survey.id}" role="button" class="btn btn-success">DELETE</a></td>
                        
                         <td><a href = "/updatesurvey?id=${survey.id}" role = "button" class ="btn btn-primary">UPDATE</a></td>                   
                     
                        </tr>
                   
               </c:forEach>
               </tbody>
               
       </table>
       
       <div style="text-align:center;">
          <a href="/addnew" role="button" class="btn btn-info"><strong>Add new employee</strong></a>
  </div>
  </div>
</body>
</html>