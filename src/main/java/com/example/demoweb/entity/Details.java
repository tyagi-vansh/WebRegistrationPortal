package com.example.demoweb.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "signupdata")
@Data
public class Details {

    @Id
    @GeneratedValue
    private int id;
    private String name;
    private String email;
    private String Address;
    private int age;
    private String mobile;
    private String password;
}
