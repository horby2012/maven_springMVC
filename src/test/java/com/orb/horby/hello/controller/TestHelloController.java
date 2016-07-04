package com.orb.horby.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test/mvc")
public class TestHelloController {
    @RequestMapping("/hello")
    public String hello() {
        return "hello";
    }
}
