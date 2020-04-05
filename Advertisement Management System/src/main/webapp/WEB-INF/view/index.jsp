


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
    <p style="color:yellow;font-size:60px;position:relative;top:-80px;left:320px;font-family:sans-serif;"> Let's Explore Your Bussiness!!!</p>
    <p style="color:pink;font-size:35px;position:relative;top:-40px;left:330px;font-family:sans-serif;">Do you want to Search Hoardings in your Area?</p>
    <p style="color:yellowgreen;font-size:25px;position:relative;top:-30px;left:0px;font-family:sans-serif;">(Then click on "CUSTOMER" button and Search Hoardings with the prices in your City and Order to that Advertiser too )</p>
    <div class="btn btn-primary" style=" position:relative;top:-20px;left:600px;height: 50px;width: 200px"><a href="<%=path%>/akshat/customer" style="color:black;font-size: 30px;border-radius: 10px">CUSTOMER</a></div>
    <hr>
    
    <p style="color:pink;font-size:35px;position:relative;top:50px;left:330px;font-family:sans-serif;">Do you Want to Explore Your Bussiness?</p>
    <p style="color:yellowgreen;font-size:25px;position:relative;top:70px;left:0px;font-family:sans-serif;">(Then click on "AD AGENGY" button and Post your Hoardings with the prices with details and get the Orders from the Customers... )</p>
    <div class="btn btn-primary" style=" position:relative;top:90px;left:600px;height: 50px;width: 200px"><a href="<%=path%>/akshat/agency" style="color:black;font-size: 30px;border-radius: 10px">AD-AGENCY</a></div>
    
    
    
    
    </section>


    <!-- Trending Restaurant Section Begin -->
    <section class="trending-restaurant spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Top trending Hoardings</h2>
                        <p>Explore some of the best Hoarding in India</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="trend-item">
                        <div class="trend-pic">
                            <img src="/img/1.jpeg" alt="">
                            <div class="rating">4.9</div>
                        </div>
                        <div class="trend-text">
                            <h4>Ram Ad-Agency</h4>
                            <span>Bhawarkua Chourah, Indore</span>
                            <p>Ram Ad-agency is the best Ad-Agency in Indore With The Highest Rating.</p>
                            <div class="closed">Closed Now</div>
                            <div class="open">Opens Tommorrow at 10am</div>
                        </div>
                        <div class="tic-text">Ram Ad-Agency</div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="trend-item nightlife">
                        <div class="trend-pic">
                            <img src="/img/2.jpeg" alt="">
                            <div class="rating">4.9</div>
                        </div>
                        <div class="trend-text">
                            <h4>Agarwal Ad-Agency</h4>
                            <span>Phoolbagh Chaourah, Gwalior</span>
                            <p>Agarwal Ad-agency is the best Ad-Agency in Gwalior With The Highest Rating</p>
                            <div class="open">Open Until 3am</div>
                        </div>
                        <div class="tic-text">Agarwal Ad- Agency</div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="trend-item hotels">
                        <div class="trend-pic">
                            <img src="/img/3.jpeg" alt="">
                            <div class="rating">4.6</div>
                        </div>
                        <div class="trend-text">
                            <h4>MutthuSwammy Ad-Agency</h4>
                            <span>Tirumala Road,Tirupati</span>
                            <p>MutthuSwammy Ad-agency is the best Ad-Agency in Tirupati With The Highest Rating</p>
                            <div class="closed">Closed Now</div>
                            <div class="open">Opens Tomorow at 10am</div>
                        </div>
                        <div class="tic-text">MutthSwammy Ad-Agency</div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="trend-item events">
                        <div class="trend-pic">
                            <img src="/img/4.jpeg" alt="">
                            <div class="rating">5.0</div>
                        </div>
                        <div class="trend-text">
                            <h4>B.M.V Ad-Agency</h4>
                            <span>Jabalpur Road, Sagar</span>
                            <p>B.M.V Ad-agency is the best Ad-Agency in Sagar With The Highest Rating</p>
                            <div class="open">Open Until 3am</div>
                        </div>
                        <div class="tic-text">B.M.V Ad-Agency</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Trending Restaurant Section End -->
<hr>
    <!-- Testimonial Section Begin -->
    <section class="testimonial-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="testimonial-item owl-carousel">
                    <div class="single-testimonial-item">
                            <img src="/img/akshat.jpeg" alt="">
                            <p>I Just Want to say that  explore the various Technologies.Go Ahead and Achieve your Goals. </p>
                            <h4>Akshat Lakshkar</h4>
                            <span>CEO Company</span>
                        </div>
                        <div class="single-testimonial-item">
                            <img src="/img/shukla.jpg" alt="">
                            <p>Me bas Ye khena chata hu mera nam yha faltu likha gya he mera is project me khi se khi tk koi nata nhi he!!! dhanyabad</p>
                            <h4>Ayush Shukla</h4>
                            <span>CFO Company</span>
                        </div>
                        
                        <div class="single-testimonial-item">
                            <img src="/img/c2.jpg" alt="">
                            <p>Me yani C2 bas Ek carbon Compound hu jiski valency 4 he jo ki covalent bonds bnata he vo bhi strong wale</p>
                            <h4>Sitaram Badhai</h4>
                            <span>HR Company</span>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="bg-img">
                <img src="/img/testimonial-bg.png" alt="">
            </div>
        </div>
    </section>
    <!-- Testimonial Section End -->

    <!-- How It Works Section Begin -->
    <section class="work-section set-bg" data-setbg="/img/line-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>How it works</h2>
                        <p>Explore some of the best Hoardings in your city</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-work-item">
                        <div class="number">01.</div>
                        <div class="work-text">
                            <h4>Register as a Customer or Ad-Agency</h4>
                            <p>(A).If you are a customer then register and Search for your favourite hoardings in your locality with best AD-Agency. </p>
                            <p>(B).If you are a Ad-agency then register and post your Best hoarding with its details required and get an order for your Hoardings.</p>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-work-item">
                        <div class="number">02.</div>
                        <div class="work-text">
                            <h4>Place your Order!!</h4>
                            <p>As a Customer you have to click on the order button to get your favourite hoarding for your product. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-work-item">
                        <div class="number">03.</div>
                        <div class="work-text">
                            <h4>Track your Order</h4>
                            <p>Get your Tracking Details for your Respective Order </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- How It Works Section End -->





    <!-- Footer Section Begin -->
    <footer class="footer-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <form action="#" class="newslatter-form">
                        <input type="text" placeholder="Your email address">
                        <button type="submit">Subscribe to our Newsletter</button>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget">
                        <h4>Usefull Links</h4>
                        <ul>
                            <li>About us</li>
                            <li>Testimonials</li>
                            <li>How it works</li>
                            <li>Create an account</li>
                            <li>Our Services</li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-lg-3 col-sm-6">
                    <div class="footer-widget">
                        <h4>Usefull Links</h4>
                        <ul>
                            <li>About us</li>
                            <li>Testimonials</li>
                            <li>How it works</li>
                            <li>Create an account</li>
                            <li>Our Services</li>
                        </ul>
                    </div>
                </div>
               
            </div>
            <div class="row footer-bottom">
                <div class="col-lg-5 order-2 order-lg-1">
                    <div class="copyright"><p class="text-white">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved to Avigator <i class="fa fa-heart" aria-hidden="true"></i>  <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p></div>
                </div>
                <div class="col-lg-7 text-center text-lg-right order-1 order-lg-2">
                    <div class="footer-menu">
                        <a href="#">Home</a>
                        <a href="#">Explore</a>
                        <a href="#">More Cities</a>
                        <a href="#">News</a>
                        <a href="#">Contact</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

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