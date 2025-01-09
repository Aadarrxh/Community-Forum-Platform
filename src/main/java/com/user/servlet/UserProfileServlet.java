package com.user.servlet;

import javax.servlet.*;
import javax.servlet.http.*;

import com.user.model.User;

import java.io.*;

public class UserProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Example user data, you can fetch it from a database
        User user = new User();
        user.setName("Rachel Rose");
        user.setProfilePic("https://placehold.co/64x64");
        user.setPosition("Designer at Jeep Renegade");
        user.setPassword("Past: Lambo and BMW");
        user.setCountry("United Kingdom");

        // Set the user object as an attribute to be accessed in the JSP
        request.setAttribute("user", user);

        // Forward the request to the JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("/profile.jsp");
        dispatcher.forward(request, response);
    }
}
