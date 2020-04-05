<!DOCTYPE html>
<html lang="zxx">
<%
String path=application.getContextPath();
%>
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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="logo">
                <a href="./index.html"><img src="/img/hoarding.png" alt="" style="margin:0px;padding:0px;height:105px;width: 120px;position:relative;top:-30px;left:-15px;"></a>
            </div>
             <div class="header-right">
            <nav class="main-menu mobile-menu">
                <ul>
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="<%=path%>/akshat/customer">Customer</a></li>
                    <li><a href="<%=path%>/akshat/agency">Ad-Agency</a></li>
                    <li><a href="blog.html">About Us</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </nav>
             </div>
           
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->
    
    
    <section class="hero-section set-bg" data-setbg="/img/hero-bg.jpg">
      <div class="btn btn-primary" style=" position:relative;top:-20px;left:600px;height: 50px;width: 200px"><a href="<%=path%>/akshat/register1" style="color:black;font-size: 30px;border-radius: 10px">REGISTER</a></div>
      <hr>
    <div class="btn btn-primary" style=" position:relative;top:100px;left:600px;height: 50px;width: 200px"><a href="<%=path%>/akshat/customerpage" style="color:black;font-size: 30px;border-radius: 10px">LOGIN</a></div>
  
    
    
    
    </section>




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