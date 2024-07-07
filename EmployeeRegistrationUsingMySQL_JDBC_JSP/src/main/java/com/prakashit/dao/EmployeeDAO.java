package com.prakashit.dao;

import com.prakashit.bean.Employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/jsp_db";
    private static final String INSERT_QUERY
            = "insert into employee(firstName,lastName,username,password,address,contact) values(?,?,?,?,?,?)";
    int result = 0;

    public int registerEmployee(Employee employee) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(URL, "root", "root")) {
            PreparedStatement ps = con.prepareStatement(INSERT_QUERY);
            ps.setString(1, employee.getFirstName());
            ps.setString(2, employee.getLastName());
            ps.setString(3, employee.getUsername());
            ps.setString(4, employee.getPassword());
            ps.setString(5, employee.getAddress());
            ps.setString(6, employee.getContact());
            System.out.println(ps);
            result = ps.executeUpdate();
        }

        return result;
    }
}
