package com.user.servlet;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        String password = request.getParameter("password");

        // Database connection
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try {
            // Connect to database (adjust your DB URL, username, and password)
            String dbURL = "jdbc:mysql://localhost:3306/your_database";
            String dbUser = "root";
            String dbPass = "password";
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // SQL query to insert user data into the database
            String sql = "INSERT INTO users (username, email, country, password) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, email);
            stmt.setString(3, country);
            stmt.setString(4, password);

            // Execute the query
            int rows = stmt.executeUpdate();
            
            if (rows > 0) {
                response.sendRedirect("login.jsp"); // Redirect to login page after successful registration
            } else {
                response.getWriter().write("Error in registration!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("Database error: " + e.getMessage());
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
