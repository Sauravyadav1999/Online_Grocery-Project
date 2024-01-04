<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>body {background-color: #00693E;}</style> 
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">My Orders <i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa fa-inr"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
             <th scope="col">Rate & Review</th>
              <th scope="col">Status</th>
              <th scope="col">action <i class='fas fa-window-close'></i></th>
              
          </tr>
        </thead>
        <tbody>
<% 
int sno=0;
try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL ");
    while(rs.next())
    {
        sno=sno+1;
        String status = rs.getString(15);
%>
        <tr>
            <td><%out.println(sno);%></td>
            <td><%=rs.getString(17) %></td>
            <td><%=rs.getString(18)%></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(19)%> </td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5)%></td>
            <td><%=rs.getString(11)%></td>
            <td><%=rs.getString(12)%></td>
            <td><%=rs.getString(13)%></td>
            <td><a href="rating.jsp"><i class="fa fa-pencil"></i></a></td>
            <td><%=status%></td>
            <td>
                <% 
                if (status.equals("processing") || status.equals("bill")) {
                %>
                <a href="userCancelorder.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">want toCancel<i class="fa fa-ban" aria-hidden="true"></i></a>
                <%
                }
                %>
            </td>
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
      <br>
      <br>
      <br>

</body>
</html>