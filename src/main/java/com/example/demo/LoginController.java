package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by cunsong.wu1 on 2016/12/15.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String signin(@RequestParam(name = "errorCode", required = false) String errorCode, Model model) {
        model.addAttribute("errorCode", errorCode);
        return "login/login";
    }


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam(name = "errorCode", required = false) String errorCode, Model model) {
        model.addAttribute("errorCode", errorCode);
        return "indexDetails";
    }
}
