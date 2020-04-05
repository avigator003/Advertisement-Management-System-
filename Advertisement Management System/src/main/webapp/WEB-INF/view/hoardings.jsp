
<%@taglib prefix="qu" uri="http://java.sun.com/jsp/jstl/core" %>



<%
String path=application.getContextPath();
%>


<%@include file="blocks/cached1.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Hoardings</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/fonts/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/css1/style.css">
    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    
    
</head>
<body style="background-color: grey">



	
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

















<qu:set value="0" var="count" ></qu:set>


<qu:if test="${hoarding!=null}">

<qu:forEach items="${hoarding}" var="hoar">


<qu:forEach items="${pic[count]}" var="pics">

<qu:forEach items="${name[count]}" var="names">
 <img src="data:image/jpg;base64,${pics}" style="height:350px;width:350px;position:relative;left:400px;top:17px">
 <br>
<div id="details" style="position: relative;left:480px;top:15px;font-weight: bold">
PRICE  : <qu:out value="${hoar.getPrice()}"></qu:out>
<br>
E-MAIL : <qu:out value="${hoar.getEmail()}" ></qu:out>
<br>
AGENCY : <qu:out value="${names }"></qu:out>
</div>
<qu:set value="${hoar.getId()}" var="a"></qu:set>

<qu:set var="count" value="${count + 1}"></qu:set>

<form action="<%=path%>/akshat/order/${a}">
<input type="submit" value="order" style="position: relative;left:510px;top:15px;border-radius:5px;width:100px;background-color: orange">

</form>
</qu:forEach>

</qu:forEach>

<hr>
</qu:forEach>
</qu:if>
<qu:if test="${hoarding==null}">
<%
response.sendRedirect("/akshat/customerinterface");
%>
</qu:if>





</body>
</html>