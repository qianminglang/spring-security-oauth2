package com.clear;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * ClassName com.clear.OAuth2ResourceApplication
 *
 * @author qml
 * Date 2020/9/12 0012 18:15
 * Version 1.0
 **/
@SpringBootApplication
@MapperScan(basePackages = "com.clear.resource.mapper")
public class OAuth2ResourceApplication {
    public static void main(String[] args) {
        SpringApplication.run(OAuth2ResourceApplication.class);
    }
}