<%
String path=application.getContextPath();
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ORDER</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css/order.css">
</head>
<body>

    <div class="main">

                <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="/img/signin-image.jpg" alt="sing up image"></figure>
                                           </div>

                    <div class="signin-form">
                        <h2 class="form-title">ORDER DETAILS</h2>
                        <form method="POST" class="register-form" id="login-form" action="<%=path%>/akshat/orderdetails">
                            <div class="form-group">
                                
                                <input type="text" name="Username" id="your_name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                
                                <input type="email" name="email" id="your_pass" placeholder="E-mail"/>
                            </div>
                            <div class="form-group">
                                <input type="text" name="number" placeholder="Phone No."/>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Order"/>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>