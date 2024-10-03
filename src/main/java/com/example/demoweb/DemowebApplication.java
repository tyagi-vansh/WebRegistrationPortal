package com.example.demoweb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class DemowebApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemowebApplication.class, args);
	}

	@Bean
	public InternalResourceViewResolver irvr(){
		InternalResourceViewResolver irv = new InternalResourceViewResolver();
		irv.setPrefix("/view/jsp/");
		irv.setSuffix(".jsp");
		return irv;
	}
}
