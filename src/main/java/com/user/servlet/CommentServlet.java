package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/comment")
public class CommentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content = request.getParameter("content");
        int threadId = Integer.parseInt(request.getParameter("threadId"));
        String userId = request.getSession().getAttribute("userId").toString();

        // Add logic to store comment data into the database
        // Example: Database.insertComment(content, threadId, userId);

        response.sendRedirect("thread?threadId=" + threadId);
    }
}

