package com.hellodarling.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class TestController {
    @GetMapping("/hello")
    public String hello() {
        return "how are you?";
    }
}
