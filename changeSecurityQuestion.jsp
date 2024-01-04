<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
<style>body {background-color: #00693E;}</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%}%>
<%

if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%}%>
<form action="changeSecurityQuestionAction.jsp" method="post"> 

<h3>Select Your New Security Question</h3>
 <select class="input-style" name="securityQuestion" >
 <option value="firstCar">What was your first car?</option>
      <option value="petName">What is the name of your pet?</option>
      <option value="firstSchool">What was your first school?</option>
      <option value="firstTeacher">Who was your first teacher?</option>
  </select> 
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your new Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input  class="input-style" type="password" name="password" placeholder="Enter password(for Secuirty)" required>
<hr>
 <button class="button" type="submit" >Save<i class='far fa-arrow-alt-circle-right'></i></button>
 </form>
</body>
<br><br><br>
</html>