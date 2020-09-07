package com.clear;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * ClassName Oauth2ServerApplication
 *
 * @author qml
 * Date 2020/9/6 0006 13:10
 * Version 1.0
 **/
@SpringBootApplication
@MapperScan(basePackages = "com.clear.mapper")
public class Oauth2ServerApplication {
    public static void main(String[] args) {
        SpringApplication.run(Oauth2ServerApplication.class);
    }
}