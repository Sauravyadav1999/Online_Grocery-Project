<%@ page import="java.sql.*" %>
<%@ page import="project.ConnectionProvider" %>

<%
    // Get the parameters from the form
    String ratingValue = request.getParameter("rating");
    String subject = request.getParameter("subject");
    String body = request.getParameter("body");

    Connection con = null;
    PreparedStatement pst = null;

    try {
        con = ConnectionProvider.getCon();

        // Insert the rating data into the "rating" table
        String query = "INSERT INTO rating (rating, subject, body) VALUES (?, ?, ?)";
        pst = con.prepareStatement(query);
        pst.setString(1, ratingValue);
        pst.setString(2, subject);
        pst.setString(3, body);
        int rowsInserted = pst.executeUpdate();

        if (rowsInserted > 0) {
            // Rating data was successfully saved
            response.sendRedirect("rating.jsp?msg=valid");
        } else {
            // Error occurred while saving data
            response.sendRedirect("rating.jsp?msg=invalid");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("rating.jsp?msg=invalid");
    } finally {
        try {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
