package com.prakashit.controller;

import com.prakashit.dao.StudentDAO;
import com.prakashit.model.Student;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/register")
public class StudentRegistrationController extends HttpServlet {
    private StudentDAO studentDAO;
    int result =0;

    @Override
    public void init(ServletConfig config) throws ServletException {
        studentDAO = new StudentDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String section = req.getParameter("section");
        String address = req.getParameter("address");
        String stream = req.getParameter("stream");

        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setAddress(address);
        student.setSection(section);
        student.setStream(stream);

        try {
            result = studentDAO.registerStudent(student);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        if (result>0){
           resp.sendRedirect("success.jsp");
       }else {
           resp.sendRedirect("failure.jsp");
       }

    }
}
