package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve list of users, posts, and comments
        // Example: List<User> users = Database.getAllUsers();
        // Example: List<Thread> threads = Database.getAllThreads();

        request.setAttribute("users", users);
        request.setAttribute("threads", threads);
        request.getRequestDispatcher("admin_dashboard.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("deleteThread".equals(action)) {
            int threadId = Integer.parseInt(request.getParameter("threadId"));
            // Delete thread from the database
            // Example: Database.deleteThread(threadId);
        } else if ("deleteUser".equals(action)) {
            String userId = request.getParameter("userId");
            // Delete user from the database
            // Example: Database.deleteUser(userId);
        }

        response.sendRedirect("admin");
    }
}
