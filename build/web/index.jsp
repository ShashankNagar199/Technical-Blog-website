<%-- 
    Document   : index
    Created on : 7 Nov, 2020, 4:26:55 AM
    Author     : hp
--%>

<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 100% 100%, 48% 90%, 0 100%, 0% 70%, 0% 35%, 20% 10%);
            }
            </style>
        
    </head>
    <body>
        
        
        <%@include file="normal_navbar.jsp" %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white">
                <div class="container">
             <h3 class="display-3">Welcome to Techblog </h3>
          
             <p>Welcome to Tech Blog,World of technology
             A programming language is a notation for writing programs, which are specifications of a computation or algorithm. Some authors restrict the term "programming language" to those languages that can express all possible algorithms.
             </p>
             <p>Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Early ones preceded the invention of the digital computer, the first probably being the automatic flute player described in the 9th century by the brothers Musa in Baghdad, during the Islamic Golden Age.[1] Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[2] The programs for these machines (such as a player piano's scrolls) did not produce different behavior in response to different inputs or conditions.</p>
             <button class="btn btn-outline-light btn-lg">Let's start</button>
             <a href="login_page.jsp" class="btn btn-outline-light btn-lg"> <span class="fa fa-user-circle fa-spin"></span>Login</a>
                </div>
            </div>
            
          
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    
                        
                    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">C/C++ Programming </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                </div>
                 <div class="col-md-4">
                    
                        
                    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Python Programming </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                </div>
                 <div class="col-md-4">
                    
                        
                    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">JavaProgramming </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    
                        
                    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title"> Data Structure </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                </div>
                 <div class="col-md-4">
                    
                        
                    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Web Development</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                </div>
                 <div class="col-md-4">
                    
                        
                    <div class="card" >
  
  <div class="card-body">
    <h5 class="card-title">Java Script </h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
                </div>
            </div>
        </div>
        
       <script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/myjs.js" type="text/javascript"></script>

<script>
    
    </script>
    </body>
</html>
