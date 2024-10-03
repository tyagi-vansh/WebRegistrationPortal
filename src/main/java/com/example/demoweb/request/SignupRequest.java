package com.example.demoweb.request;

import lombok.Data;

@Data
public class SignupRequest {
    private String name;
    private String email;
    private String Address;
    private int age;
    private String mobile;
    private String password;
}
