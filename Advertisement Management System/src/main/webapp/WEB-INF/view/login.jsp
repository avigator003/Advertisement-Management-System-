
<%@include file="blocks/loginheader.jsp"%>
    <div class="container">
    <div class="row text-center"  >
        <div class="col-lg-3 col-md-3 col-sm-3" ></div>
        
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div id="ui" style=" 
     -webkit-box-shadow: -1px 0px 26px 3px rgba(0,0,0,0.75);
    -moz-box-shadow: -1px 0px 26px 3px rgba(0,0,0,0.75);
    box-shadow: -1px 0px 26px 3px rgba(0,0,0,0.75);
    background-color: #333;
    opacity: 0.8;
    position: absolute;
    top:-10px;
    left: 30px;
    height: 400px;
    width: 350px;
    padding:10px;
    margin: 20px 20px 20px 80px
   ">
                <form class="form-group" action="<%=path%>/akshat/login" method="post">
                    
        <div class="col-lg-3 col-md-3 col-sm-3"></div>
        </div>
                    <label id="lo"  >Login</label>
                    <h1 style="color:red">${SPRING_SECURITY_LAST_EXCEPTION.message}</h1>
                    
               <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <span class="glyphicon glyphicon-user" id="use" style="font-size: 30px;margin:35px; color: green;position: absolute;top: -10px;left: 75px"> </span>
              
                  <input type="text" placeholder="Username" name="username" required style="position: absolute;top: 23px;left:172px">
                </div>
                 
                    <br>
                    <br>
            
               <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">
                    <span class="glyphicon glyphicon-lock" id="use1" style="font-size: 30px;margin:35px; color: green;position: absolute;top: 5px;left: 90px"> </span>
                
                   
                  <input type="password" placeholder="password" name="password" required style="position: absolute;top: 38px;left:187px">
                </div>
                <br>
                 
                    <br>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">
            <input type="submit" value="Sign in!" id="sig" style="position: absolute;top: 50px;left:160px" >
            </div>
            </div>
                     
                
                      <br>
                             <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">
               <b class="text-danger" style="position: absolute;top:70px;left:188px">${msg}</b>
             </div>
                             </div>
              <br>
                 <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">

                    <label style="position: absolute;top:80px;left:192px;color: green">Forgot Password?<a href="#">Click Here</a></label>
             </div>
       
                 </div>
              <br>
    
                 <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">
                    <b style="position: absolute;top:100px;left:170px">   <a href="<%=path%>/akshat/register" id="account" >Not a memeber yet?Create Account</a> <b>&nbsp;
            </div>
                </div>
                </form>
        
        <div class="col-lg-3 col-md-3 col-sm-3"></div>
        </div>
    </div>
        </div>
    </div>
            
            
            
            
            
            
            
            
            
             
     
    
            

</body>
</html>
