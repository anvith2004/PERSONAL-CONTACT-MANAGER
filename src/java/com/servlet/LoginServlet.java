/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

import com.conn.DBConnect;
import com.dao.userDAO;
import com.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

/**
 *
 * @author 91861
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        userDAO dao = new userDAO(DBConnect.getConn());
        User u = dao.loginUser(email, password);
        HttpSession session = request.getSession();
        
        if (u != null) {
            session.setAttribute("user", u);
            response.sendRedirect("index.jsp");
        } else {
            session.setAttribute("inMSG", "Wrong Email and Password...");
            response.sendRedirect("login.jsp");
        }
        
    }
    
}
