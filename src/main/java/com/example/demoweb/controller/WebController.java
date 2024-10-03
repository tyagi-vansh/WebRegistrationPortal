package com.example.demoweb.controller;

import com.example.demoweb.Services.SignupServices;
import com.example.demoweb.request.LoginRequest;
import com.example.demoweb.request.SignupRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class WebController {
    @Autowired
    private SignupServices service;

    @GetMapping("/index")
    public String page() {

        return "index";
    }


    @GetMapping("/signup")
    public String signupPage() {
        return "signup";
    }

    @PostMapping("/submit-signup")
    public String signup(String name, String email, String address, Integer age, String mobile, String password,Model map) {
        SignupRequest signuprequest = new SignupRequest();
        signuprequest.setName(name);
        signuprequest.setMobile(mobile);
        signuprequest.setPassword(password);
        signuprequest.setAge(age);
        signuprequest.setAddress(address);
        signuprequest.setEmail(email);
        return service.signup(signuprequest,map);
    }
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String login(LoginRequest loginrequest, Model map){
        return service.login(loginrequest,map);
    }
    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

}
