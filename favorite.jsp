<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Favorites</title>
    <!-- Add your CSS styles here -->
</head>
<body>
    <h1>Your Favorite Products</h1>
    <ul>
        <%
        ArrayList<String> favoriteProducts = (ArrayList<String>) session.getAttribute("favoriteProducts");

        if (favoriteProducts != null && !favoriteProducts.isEmpty()) {
            for (String product : favoriteProducts) {
        %>
        <li><%=product%></li>
        <%
            }
        } else {
        %>
        <li>No favorite products added yet.</li>
        <%
        }
        %>
    </ul>
</body>
</html>
 