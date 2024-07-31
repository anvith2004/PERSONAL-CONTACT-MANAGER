/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.conn;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author 91861
 */
public class DBConnect {
    private static Connection conn;
    
    public static Connection getConn() {
        try {
            if (conn == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/contact", "root", "123456789");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error connecting to the database: " + e.getMessage());
        }
        
        return conn;
    }
}
