<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
 div{ 
    background-image: url("shopping-cart-with-wooden-elements.jpg");
}
</style>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString();
    %>
            <center><h2><i class="fa fa-shopping-basket" aria-hidden="true"></i>Online Grocery </h2></center>
            <h2><a href=""> <%out.println(email);%><i class="fa fa-user" aria-hidden="true"></i></h2>
            <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="myCart.jsp">My Cart <i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
            <a href="myOrders.jsp">My Orders<i class="fa fa-archive" aria-hidden="true"></i></a>
            <a href="changeDetails.jsp">Change Details <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Feedback<i class="fa fa-commenting" aria-hidden="true"></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
            <div class="search-container">
             <form action="searchHome.jsp"  method="post">
             <input type="text" plcaeholder="Search" name="search">
             <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
             </form>
             
            </div>
          </div>
           <br>
           <!--table-->
