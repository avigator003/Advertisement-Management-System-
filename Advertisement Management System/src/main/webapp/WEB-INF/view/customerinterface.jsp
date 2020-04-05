


<!DOCTYPE html>
<html lang="zxx">
<%
String path=application.getContextPath();
%>
<%@include file="blocks/cached1.jsp"%>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Advertisement Management System</title>

<script> 


</script>


    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
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
                
                <li class="nav-item"><a href="#" style="color:white;font-weight:bold">&nbsp;My Orders</a></li>
    
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


    
   <!-- Hero Section Begin -->
    <section class="hero-section set-bg" data-setbg="/img/hero-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero-text">
                        <img src="/img/placeholder.png" alt="">
                        <h1>Search for Hoardings!!!</h1>
                        <form action="<%=path%>/akshat/find" class="filter-search">
                            
                            <div class="location-search">
                                <h5>Your Location</h5>
                                <select class="lo-search" name="select">
                                    <option value="Indore">Indore</option>
                                    <option value="Gwalior">Gwalior</option>
                                    <option value="Jabalpur">Jabalpur</option>
                                    <option value="Delhi">Delhi</option>
                                    <option value="Sagar">Sagar</option>
                                    <option value="Agra">Agra</option>
                                    <option value="Mumbai">Mumbai</option>
                                    <option value="Pune">Pune</option>
                                    
                                </select>                    
                                        </div>
                            <button type="submit">Search Now</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->



    <!-- Js Plugins -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="/js/jquery.magnific-popup.min.js"></script>
    <script src="/js/jquery.slicknav.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
    <script src="/js/jquery.nice-select.min.js"></script>
    <script src="/js/mixitup.min.js"></script>
    <script src="/js/main.js"></script>
</body>

</html>