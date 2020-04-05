
<%
String path=application.getContextPath();
%>

<%@include file="blocks/cached.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Advertisement Management System</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css1/style.css">
    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    
    
</head>
<body>



	
	    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="#"><img src="<%=path%>/img/icon.png" id="img1" style="     position: relative;
    top: -12px;
    left: -10px;
    height: 52px;
    width: 52px"></a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      
      <ul class="nav navbar-nav" style="display: inline-block;">
        
        <!-- Standard dropdown -->
       <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>  
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About</a>        
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact</a>        
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Services</a>        
                        </li>   
                       
        <!-- /Standard dropdown -->
        
        <!-- 2-cols dropdown -->
        
        <!-- /2-cols dropdown -->        
        
      </ul>
      
      <!-- .navbar-right -->
      <ul class="nav navbar-nav navbar-right">
      
                <li class="nav-item"></li>
                <li class="nav-item"></li>
                <li class="nav-item"></li>
                
                <li class="nav-item"><a href="<%=path%>/akshat/myorders" style="color:white;font-weight:bold">&nbsp;My Orders</a></li>
    
                <li class="nav-item"><a href="/logout"  class="nav-link"><span class="glyphicon glyphicon-log-in" style="color:white;font-weight:bold">&nbsp;Log-out</a></li>
              </ul>
            </div>
            
          </div>
        </li>
      </ul>
      <!-- /.navbar-right -->
      
    </div>
  </div>
</nav>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">POST YOUR HOARDINGS</h2>
                        <form class="register-form" id="register-form" action="<%=path%>/akshat/home" enctype="multipart/form-data" method="POST" >
                            <div class="form-group">
                                <input type="file" name="filename1" requried>
                            </div>
                            <div class="form-group">
                                <input type="email" placeholder="E-Mail" name="email" required>
                            </div>
                            <div class="form-group">
                                <input type="text" placeholder="Your Current Location" name="city" required>
                            </div>
                            <div class="form-group">
                                 <input type="text" placeholder="Set Your Price"  name="price" required>
                            </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="POST"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="/img/signup-image.jpg" alt="sing up image"></figure>
                        
                    </div>
                </div>
            </div>
        </section>

      
    </div>

    <!-- JS -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/main1.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>







	
