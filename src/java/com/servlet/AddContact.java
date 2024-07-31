/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlet;

import com.conn.DBConnect;
import com.dao.ContactDAO;
import com.entity.Contact;
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
@WebServlet("/addContact")
public class AddContact extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userid"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phno = request.getParameter("phno");
        
        Contact c = new Contact(name,email, phno,userId);
        ContactDAO dao = new ContactDAO(DBConnect.getConn());
        
        HttpSession session = request.getSession();
        
        boolean f = dao.saveContact(c);
        if (f) {
            session.setAttribute("succMsg", "Your Contact Saved");
            response.sendRedirect("addContact.jsp");
        }
        else {
            session.setAttribute("failMsg", "Error in DataBase");
            response.sendRedirect("addContact.jsp");
        }
        
    }
}
