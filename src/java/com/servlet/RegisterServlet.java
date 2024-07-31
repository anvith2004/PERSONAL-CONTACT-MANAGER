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
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User u = new User(name, email, password);

        userDAO dao = new userDAO(DBConnect.getConn());
        boolean f = dao.userRegister(u);

        HttpSession session = request.getSession();
        if (f) {
            session.setAttribute("SuccMsg", "User Registration Successfully...");
            response.sendRedirect("register.jsp");
//            System.out.println("Success");
        } else {
            session.setAttribute("ErrorMsg", "User Registration Not Done...");
            response.sendRedirect("register.jsp");
//            System.out.println("Failure");
        }
    }
}
