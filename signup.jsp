<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Signup</title>
<style>body {background-image: url("groc2.png");background-size: cover;}
#buttonSign{color:black;} .signup ,.whysign { background-color:#8cc751;}</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter email" required>
    <input type="number" name="mobileNumber" placeholder="Enter mobile number" required>
    <select name="securityQuestion" required>
      <option value="firstCar">What was your first car?</option>
      <option value="petName">What is the name of your pet?</option>
      <option value="firstSchool">What was your first school?</option>
      <option value="firstTeacher">Who was your first teacher?</option>
    </select>
    <input type="text" name="answer" placeholder="Enter answer" required>
    <input type="password" name="password" placeholder="Enter password" required>
    <input id="buttonSign" type="submit" value="Signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
    <%
    String msg=request.getParameter("msg");
    if("valid".equals(msg))   	
    { %>
    <h1>Successfully Registered!</h1>
   <%  } %>
   <%
   if("invalid".equals(msg))
   {
   %> 
<h1>Something Went Wrong! Try Again!</h1>
   <%} %>
  <h2><i class="fa fa-shopping-basket" aria-hidden="true"></i> Online Grocery</h2><h2>Registration</h2>
    <p>Online Grocery is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>
