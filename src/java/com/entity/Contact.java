/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.entity;

/**
 *
 * @author 91861
 */
public class Contact {
    private int id;
    private String name;
    private String email;
    private String phno;
    private int userId;

    // Default constructor
    public Contact() {
        super();
    }

    // Parameterized constructor
    public Contact(String name, String email, String phno, int userId) {
        super();
        this.name = name;
        this.email = email;
        this.phno = phno;
        this.userId = userId;
    }

    // Getter for id
    public int getId() {
        return id;
    }

    // Setter for id
    public void setId(int id) {
        this.id = id;
    }

    // Getter for name
    public String getName() {
        return name;
    }

    // Setter for name
    public void setName(String name) {
        this.name = name;
    }

    // Getter for email
    public String getEmail() {
        return email;
    }

    // Setter for email
    public void setEmail(String email) {
        this.email = email;
    }

    // Getter for phno
    public String getPhno() {
        return phno;
    }

    // Setter for phno
    public void setPhno(String phno) {
        this.phno = phno;
    }

    // Getter for userId
    public int getUserId() {
        return userId;
    }

    // Setter for userId
    public void setUserId(int userId) {
        this.userId = userId;
    }
}

