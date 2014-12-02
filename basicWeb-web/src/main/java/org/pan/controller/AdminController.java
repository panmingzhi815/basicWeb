package org.pan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by panmingzhi815 on 2014/12/1.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping()
    public String admin(HttpSession httpSession){
        Object user = httpSession.getAttribute("user");
        if(user == null){
            return "redirect:/admin/login";
        }
        return "redirect:/admin/manage";
    }

    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/manage")
    public String manage(){
        return "manage";
    }

}
