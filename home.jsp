<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="home-style.css">
<link rel="stylesheet" href="newHome.css">
<style>
    body {  
        background-color: #50C878;
    }
    h3 {
        color: yellow;
        text-align: center;}
 footer{
    background-color: #1b1d1f;
    padding: 50px 20px;
    border-top: 5px solid #4eb060;
}
.footer-container{
    max-width: 2200px;
    margin: auto;
    display: flex;
    justify-content: space-around;
    align-items: flex-start;
}
.footer-logo{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}
.footer-logo a{
    color: #ffffff;
    font-size: 1.4rem;
    font-weight: 600;
    letter-spacing: 1px;
}
.footer-logo a span{
    color: #4eb060;
}
.footer-social{
    display: flex;
    margin-top: 10px;
}
.footer-social a{
    width:40px;
    height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #ffffff;
    border: 1px solid #ffffff15;
    font-size: 0.9rem;
    margin: 0px 5px;
    transition: all ease 0.3s;
}
.footer-social a:hover{
    background-color: #4eb060;
    transition: all ease 0.3s;
}
.footer-links strong{
    color: #ffffff;
    font-size: 1.4rem;
    font-weight: 600;
}
.footer-links ul{
    margin-top: 10px;
}
.footer-links ul li a{
    color: #ffffff;
    opacity: 0.5;
    margin: 4px 0px;
    font-size: 0.9rem;
    letter-spacing: 1px;
    transition: all ease 0.3s;
}
.footer-links li a:hover{
    opacity: 1;
    transition: all ease 0.3s;
}

}

 
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<% 
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>
<% 
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exists in your cart! Quantity increased!</h3>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again!</h3>
<%} %>
<div style="display: flex;">
    <table class="tb" style="flex: 1;">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Name</th>
                <th scope="col">Category</th>
                <th scope="col"><i class="fa fa-inr"></i> Price</th>
                <th scope="col">Add to cart<i class="fa fa-shopping-cart" aria-hidden="true"></i></th>
                
            </tr>
        </thead>
        <tbody>
        <%
            try{
                Connection con=ConnectionProvider.getCon();
                Statement st= con.createStatement();
                ResultSet rs=st.executeQuery("select *from product where active='Yes'");
                while(rs.next())
                {
        %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
                <td><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart<i class="fa fa-shopping-cart" aria-hidden="true"></i></a></td>          
           </tr>
        <%
                }
            }
            catch(Exception e){
                System.out.println(e);
            }
        %>
        </tbody>
    </table>
    <table style="flex: 0.25;">
        <thead>
            <tr>
                <th scope="col">Product Image</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><img src="veg3.jpg" alt="Image" width="70"></td>
            </tr>
            <tr>
                <td><img src="washing.jpg" alt="Image" width="70"></td>
            </tr>
            <tr>
                <td><img src="chilli.jpg" alt="Image" width="70"></td>
            </tr>
            <tr>
                <td><img src="masala.jpeg" alt="Image" width="70"></td>
            </tr>
           <tr>
                <td><img src="egg.jpeg" alt="Image" width="70"></td>
            </tr>
            <tr>
                <td><img src="bread.jpeg" alt="Image" width="70"></td>
            </tr>
            <tr>
                <td><img src="whey.jpeg" alt="Image" width="70"></td>
            </tr>
            <tr>
                <td><img src="multivitamins.jpeg" alt="Image" width="70"></td>
            </tr>
            <!-- Add more image rows as needed -->
        </tbody>
    </table>
    
</div>
<br>
<br>
<br>
<a href="#"  style="display: block; text-align: center;">Next page... 1 , 2</a>
<footer>
      <div class="footer-container">
        <!--logo-container------>
        <div class="footer-logo">
          <a href="#"><span>e</span>Grocery</a>
          <!--social----->
          <div class="footer-social">
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            <a href="#"> <i class="fa fa-youtube" aria-hidden="true"></i></a>
          </div>
        </div>
        <!--links------------------------->
        <div class="footer-links">
          <strong>Product</strong>
          <ul>
            <li><a href="#">Clothes</a></li>
            <li><a href="#">Packages</a></li>
            <li><a href="#">Popular</a></li>
            <li><a href="#">New</a></li>
          </ul>
        </div>
        <!--links------------------------->
        <div class="footer-links">
          <strong>Category</strong>
          <ul>
            <li><a href="#">Beauty</a></li>
            <li><a href="#">Meats</a></li>
            <li><a href="#">Health</a></li>
            <li><a href="#">vegetables</a></li>
          </ul>
        </div>
        <!--links-------------------------->
        <div class="footer-links">
          <strong>Contact</strong>
          <ul>
            <li><a href="#">Phone : +91 9711XXXXX</a></li>
            <li><a href="#">Email : ydsaurav@gmail.com</a></li>
          </ul>
        </div>
      </div>
    </footer>
</body>
</html>
