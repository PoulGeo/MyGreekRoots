package com.roots.Roots.controller;


import com.roots.Roots.model.Admin;
import com.roots.Roots.model.Person;
import com.roots.Roots.model.User;
import com.roots.Roots.services.ServiceS;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;


@Controller
public class MainPostController {

    @Autowired
    ServiceS si;

    @PostMapping("/userform")
    public String InsertDriverToDB(@ModelAttribute(name = "mUser") User u,
                                   RedirectAttributes redirectAttributes) {
        String pw_hash = BCrypt.hashpw(u.getPassword(), BCrypt.gensalt());

        u.setPassword(pw_hash);

        try {
            si.insertUserToDB(u);
        } catch (DataIntegrityViolationException e) {
            redirectAttributes.addFlashAttribute("error", "User already exists with this email!");
            return "redirect:/signup";
        }

        return "login";

    }

    @PostMapping("/dologin")
    public String dologin(@RequestParam("email") String email,
                          @RequestParam("password") String password, HttpSession session) {

        User u = si.findUserByEmail(email);

        if (u == null) {
            return "login";
        }

        session.setAttribute("user", u);

        if (BCrypt.checkpw(password, u.getPassword()) && u.getPayment() == null) {
            return "agreements";
        } else if (BCrypt.checkpw(password, u.getPassword()) && u.getPayment().equals("ok")) {
            return "prebuild";
        } else {
            return "login";
        }

    }

    @PostMapping("/adminlogin")
    public String adminlogin(@RequestParam("email") String email,
                             @RequestParam("password") String password,
                             HttpSession session) {

        Admin a = si.findAdminByEmail(email);
        session.setAttribute("admin", a);

        if (BCrypt.checkpw(password, a.getPassword())) {
            return "redirect:/adminseeuser";
        } else {
            return "loulis";
        }
    }

    @PostMapping("/personForm")
    public String InsertPersonToDB(@ModelAttribute(name = "person") Person p,
                                   HttpSession session) {

        User u = (User) session.getAttribute("user");
        if (u == null) {
            return "redirect:/";
        }

        p.setUserid(u.getIduser());

        si.insertPersonToDB(p);
        u.setPayment("ok");
        si.insertUserToDB(u);
        return "prebuild";
    }

    @PostMapping("/personFormUpd")
    public String update(@ModelAttribute Person personUpd, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u == null) {
            return "redirect:/";
        }

        personUpd.setUserid(u.getIduser());
        si.update(personUpd);
        return "redirect:/seetree";
    }
}
