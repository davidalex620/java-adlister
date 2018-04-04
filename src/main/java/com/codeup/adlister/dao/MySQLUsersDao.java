package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {

    private Connection connection = null;

    public MySQLUsersDao() {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    Config.url,
                    Config.user,
                    Config.password
            );
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        }

    }



    @Override
    public User findByUsername(String username) {

        String sql = "SELECT * users WHERE username = ?";

        try{
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, username);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return new User(
                        rs.getLong("id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email")
                );
            } else {
                return null;
            }
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        }

    }



    @Override
    public Long insert(User user) {
       String sql = "INSERT INTO users(username, password, email) VALUES (?, ?, ?)";

       try {
           PreparedStatement stmt = connection.prepareStatement(
                   sql, Statement.RETURN_GENERATED_KEYS
           );

           stmt.setString(1, user.getUsername());
           stmt.setString(2, user.getPassword());
           stmt.setString(3, user.getEmail());
           stmt.executeUpdate();

           ResultSet rs = stmt.getGeneratedKeys();
           rs.next();
           return rs.getLong(1);
       } catch (SQLException e) {
           System.out.println("SQLException: " + e.getMessage());
           System.out.println("SQLState: " + e.getSQLState());
           System.out.println("VendorError: " + e.getErrorCode());
       }
    }
}
