package com.prakashit;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/user")
public class WelcomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text.html");
        PrintWriter writer = resp.getWriter();
        String userName = req.getParameter("userName");
        writer.println("<html><body>");
        writer.println("<b>Hello Dear, "+userName+" welcome to Servlet/JSP Programming... </b>");
        writer.println("</body></html>");
        writer.close();
    }
}
