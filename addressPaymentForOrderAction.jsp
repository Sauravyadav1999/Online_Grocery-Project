<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String email = session.getAttribute("email").toString();
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
String mobileNumber = request.getParameter("mobileNumber"); // Corrected parameter name
String paymentMethod = request.getParameter("paymentMethod");
String transactionId = request.getParameter("transactionId"); // Removed the empty string assignment
String status = "bill";

try {
    Connection con = ConnectionProvider.getCon();
    
    // Update user information
    PreparedStatement ps = con.prepareStatement("update users set address=?, city=?, state=?, country=?, mobileNumber=? where email=?");
    ps.setString(1, address);
    ps.setString(2, city);
    ps.setString(3, state);
    ps.setString(4, country);
    ps.setString(5, mobileNumber);
    ps.setString(6, email);
    ps.executeUpdate();

    // Update cart information
    PreparedStatement ps1 = con.prepareStatement("update cart set address=?, city=?, state=?, country=?, mobileNumber=?, orderDate=now(), deliveryDate=Date_ADD(orderDate, INTERVAL 7 DAY), paymentMethod=?, transactionId=?, status=? where email=? and address is NULL");
    ps1.setString(1, address);
    ps1.setString(2, city);
    ps1.setString(3, state);
    ps1.setString(4, country);
    ps1.setString(5, mobileNumber);
    ps1.setString(6, paymentMethod);
    ps1.setString(7, transactionId);
    ps1.setString(8, status);
    ps1.setString(9, email);
    ps1.executeUpdate();

    response.sendRedirect("bill.jsp");
} catch (Exception e) {
    System.out.println(e); // Use e.printStackTrace() to log the exception.
}
%>
