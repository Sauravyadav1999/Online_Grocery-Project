<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Rate & Review</title>
<style>  
    body {background-color: #00693E;}
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }
    .star-rating {
        font-size: 1.5rem;
        cursor: pointer;
    }
    .star-rating input[type="radio"] {
        display: none;
    }
    .star-rating label {
        display: inline-block;
        margin: 0 10px;
    }
    .star-rating label:before {
        content: "\2605"; /* Unicode character for a star */
    }
    .star-rating input[type="radio"]:checked ~ label:before {
        content: "\2605"; /* Unicode character for a filled star */
        color: #FFD700; /* Change the color of the filled star */
    }
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">How do you like the product? <i class='fas fa-comment-alt'></i></div>

<%
String msg = request.getParameter("msg");
if ("valid".equals(msg)) {
%>
<h3 style="text-align:center; color: yellow;">Rating and review successfully submitted. Thank you!</h3>
<%} %>
<%
if ("invalid".equals(msg)) {
%>
<h3 style="text-align:center; color: red;">Something went wrong! Please try again.</h3>
<%} %>

<div class="container">
    <div class="star-rating">
        <input type="radio" name="rating" id="rating1" value="5" required>
        <label for="rating1"></label>
        <input type="radio" name="rating" id="rating2" value="4">
        <label for="rating2"></label>
        <input type="radio" name="rating" id="rating3" value="3">
        <label for="rating3"></label>
        <input type="radio" name="rating" id="rating4" value="2">
        <label for "rating4"></label>
        <input type="radio" name="rating" id="rating5" value="1">
        <label for="rating5"></label>
    </div>
    <hr>
    <form action="ratingAction.jsp" method="post">
        <input class="input-style" name="subject" type="text" placeholder="Subject" required>
        <hr>
        <textarea class="input-style" name="body" placeholder="Enter your review" required></textarea>
        <hr>
        <button class="button" type="submit">Submit <i class="far fa-arrow-alt-circle-right"></i></button>
    </form>
</div>
</body>
</html>
