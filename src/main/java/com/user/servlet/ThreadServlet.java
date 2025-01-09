package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/thread")
public class ThreadServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String userId = request.getSession().getAttribute("userId").toString();

        // Add logic to store thread data into the database
        // Example: Database.insertThread(title, content, userId);

        response.sendRedirect("forum.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int threadId = Integer.parseInt(request.getParameter("threadId"));
        
        // Retrieve thread and comments from the database
        // Example: Thread thread = Database.getThread(threadId);
        // Example: List<Comment> comments = Database.getComments(threadId);

        request.setAttribute("thread", thread);
        request.setAttribute("comments", comments);
        request.getRequestDispatcher("thread.jsp").forward(request, response);
    }
}
