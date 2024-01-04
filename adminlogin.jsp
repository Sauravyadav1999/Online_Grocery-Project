
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>
<style>#container { align-item:center;display: flex;} body {background-image: url("groc2.png");background-size: cover; }
   	#buttonLogin{color:black;}  .signup ,.whysignLogin{ background-color:#8cc751;
}</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="loginAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="password" name="password" placeholder="Enter Password" required>
  <input id="buttonLogin" type="submit" value="Login">
  </form>
  </div>
  <div class='whysignLogin'>
  <% 
     String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
    %>
  <h1>Incorrect Username or Password</h1>
   <%  }%>
   <%if("invalid".equals(msg)) 
   {%>
   
<h1>Some thing Went Wrong! Try Again !</h1>
   <%}%>
    <h2><i class="fa fa-shopping-basket" aria-hidden="true"></i> Online Grocery<br><br>Welcome Admin</h2>
    <p>The Online  Grocery  is the application that allows the users to shop online Grocery without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>