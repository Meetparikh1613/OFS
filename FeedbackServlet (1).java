package controller;

import util.DBConnection;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class FeedbackServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");

        String message = request.getParameter("message");
        int rating = Integer.parseInt(request.getParameter("rating"));

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                    "insert into feedback(user_id,message,rating) values(?,?,?)"
            );

            ps.setInt(1, userId);
            ps.setString(2, message);
            ps.setInt(3, rating);

            ps.executeUpdate();

            response.sendRedirect("viewFeedback.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}