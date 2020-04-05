

<%
    String path = application.getContextPath();

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link href="<%=path%>/css1/login.css" rel="stylesheet">
        <script src="<%=path%>/js/jquery.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>

    <body >
        
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
                            <a class="nav-link" href="<%=path%>/akshat/index">Home</a>  
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
                
                <li class="nav-item"><a href="<%=path%>/akshat/login"  class="nav-link"><span class="glyphicon glyphicon-log-in" style="color:white;font-weight:bold">&nbsp;Log-in</a></li>
    
                <li class="nav-item"><a href="<%=path%>/akshat/register" class="nav-link"><span class="glyphicon glyphicon-user" style="color:white;font-weight:bold">&nbsp;Sign-up</a></li>
              </ul>
            </div>
            
          </div>
        </li>
      </ul>
      <!-- /.navbar-right -->
      
    </div>
  </div>
</nav>



