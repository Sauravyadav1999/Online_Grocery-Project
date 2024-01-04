<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
<style>body {background-image: url("groc2.png");
   			background-size: cover; }#buttonSave{color:black;}
   			 .signup ,.whyforgotPassword { background-color:#8cc751;}</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="forgotPasswordaction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter mobile Number" required>
  <select name="secuirtyQuestion">
  <option value="firstCar">what was your first car</option>
    <option value="firstSchool">what was your firsts school</option>
    <option value="petName">what is the name of your pet</option>
    <option value="firstTeacher">Who was your first teacher?</option>
 </select>
 <input type="text" name="answer" placeholder="Enter answer" required>
 <input type="password" name="newPassword" placeholder="Enter your new password" required>
 <input id="buttonSave" type="submit" value="Save">
  </form>
     
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
   String msg=request.getParameter("msg");
  if("done".equals(msg))
  {%>
   
<h1>Password Changed Successfully!</h1>
<% }%>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<% }%>

    <h2><i class="fa fa-shopping-basket" aria-hidden="true"></i>Online Grocery </h2>
    <p>The Online Grocery  is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>