package com.bharath.cricket.config;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
    private static final String URL= "jdbc:mysql://localhost:3306/cricket_analytics_db";
    private static final String USER="cricket_user";
    private static final String PASSWORD="cricket123";

    public static Connection getConnection(){
        try{
            Connection connection=DriverManager.getConnection(URL,USER,PASSWORD);
            return connection;
        } catch (Exception e) {
            throw new RuntimeException("Database connection failed", e);
        }
    }
}
