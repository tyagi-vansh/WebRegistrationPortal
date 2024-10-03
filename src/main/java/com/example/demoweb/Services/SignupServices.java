package com.example.demoweb.Services;

import com.example.demoweb.dao.WebRepository;
import com.example.demoweb.entity.Details;
import com.example.demoweb.request.LoginRequest;
import com.example.demoweb.request.SignupRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class SignupServices {
    @Autowired
    private WebRepository repo;

    public String signup(SignupRequest request, Model map) {
        Details signupdetails = repo.findByEmail(request.getEmail());
        if(signupdetails!=null){
            map.addAttribute("message","user already exist please try to login");
            return "signup";
        }
        Details sd = new Details();
        sd.setName(request.getName());
        sd.setEmail(request.getEmail());
        sd.setAddress(request.getAddress());
        sd.setAge(request.getAge());
        sd.setMobile(request.getMobile());
        sd.setPassword(request.getPassword());
        repo.save(sd);
        return "login";
    }
    public String login(LoginRequest loginrequest, Model map) {
        Details log = repo.findByEmail(loginrequest.getEmail());
        if (log != null) {
            String storedPassword = log.getPassword();
            if (storedPassword != null && storedPassword.equals(loginrequest.getPassword())) {
                map.addAttribute("loginMessage", "Login Successful");
                return "dashboard";
            }
        }
        map.addAttribute("errorMessage", "Username or password incorrect");
        return "login";
    }

}
