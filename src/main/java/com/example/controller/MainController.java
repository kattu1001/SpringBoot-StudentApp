package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping(value="")
    public String mainPage()
    {
        return "main";
    }
    @GetMapping(value="student")
    public String studentPage()
    {
        return "student";
    }
    @GetMapping(value="employeeHome")
    public String employeePage()
    {
        return "employeeHome";
    }
}
