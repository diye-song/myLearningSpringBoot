package com.example.myTwitter.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {

    @RequestMapping(method = RequestMethod.GET, path = "/index")
    public String helloWorld() {
        return "hello world";
    }

}
