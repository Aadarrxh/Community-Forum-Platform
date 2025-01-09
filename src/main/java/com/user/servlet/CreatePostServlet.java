package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreatePostServlet")
public class CreatePostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        
        // Assuming you have a Post class and a method to save the post in the database
        Post post = new Post(title, content);
        PostDAO postDAO = new PostDAO();
        postDAO.savePost(post);
        
        // Redirecting to a page to view the new post
        response.sendRedirect("view_post.jsp?id=" + post.getId());
    }
}
