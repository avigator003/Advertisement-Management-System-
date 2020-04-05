<%@taglib prefix="qu" uri="http://java.sun.com/jsp/jstl/core" %>


<%@include file="blocks/cached3.jsp" %>


<%
String path=application.getContextPath();
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MY ORDERS</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css1/style.css">
    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    
    <style>
    td{
    font-size: 15px;
    font-weight: bold;
    }
    table{
    position: relative;
    top: 100px;
    left: 500px;
    }
    h1{
    position: relative;
    top: 80px;
    left: 530px;
    }
    td{
    margin:10px;
    padding:10px;
    }
    th{
    color:red;
    font-weight:bold;
    margin:10px;
    padding:10px;
    border: 1px solid black;
    }
    </style>
</head>
<body style="background-color: orange">



	
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
                
                <li class="nav-item"><a href="<%=path%>/akshat/interface" style="color:white;font-weight:bold">&nbsp;My Orders</a></li>
    
                <li class="nav-item"><a href="<%=path%>/akshat/orderlogout"  class="nav-link"><span class="glyphicon glyphicon-log-in" style="color:white;font-weight:bold">&nbsp;Log-out</a></li>
              </ul>
            </div>
            
          </div>
        </li>
      </ul>
      <!-- /.navbar-right -->
      
    </div>
  </div>
</nav>

<table>
<h1>Your Orders!!!!!</h1>
<tr>
<th>NAME</th>
<th>E-MAIL</th>
<th>PHONE NUMBER</th>
</tr>
</table>
<qu:if test="${myorders==null}">
<h1>No Orders Till Now !!!!</h1>
</qu:if>

<qu:if test="${myorders!=null}">
<qu:forEach items="${myorders}" var="orders">


<table style="border: 1px solid black">
<tr style="border: 1px solid black">
<td style="border: 1px solid black">${orders.getUsername()}</td>
<td style="border: 1px solid black">${orders.getEmail()}</td>
<td style="border: 1px solid black">${orders.getNumber()}</td>
<tr>
</table>
</qu:forEach>
</qu:if>


</body>
</html>