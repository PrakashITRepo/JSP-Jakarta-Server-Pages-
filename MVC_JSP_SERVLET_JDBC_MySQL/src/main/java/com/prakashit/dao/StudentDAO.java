package com.prakashit.dao;

import com.prakashit.model.Student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/jsp_db?useSSL=false";
    private static final String INSERT_QUERY
            = "insert into student(firstName,lastName,section,address,stream) values(?,?,?,?,?)";

    int result = 0;

    public int registerStudent(Student student) throws ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(URL, "root", "root")) {
            PreparedStatement ps = con.prepareStatement(INSERT_QUERY);
            ps.setString(1, student.getFirstName());
            ps.setString(2, student.getLastName());
            ps.setString(3, student.getSection());
            ps.setString(4, student.getAddress());
            ps.setString(5, student.getStream());

            System.out.println(ps);
            result = ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

        return result;
    }
}
