package com.tinder.demo;

import java.io.File;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MyTinderApplication {

	public static void main(String[] args) {
		new File(HomeController.uploadDirectory).mkdir();
		SpringApplication.run(MyTinderApplication.class, args);
	}

}
