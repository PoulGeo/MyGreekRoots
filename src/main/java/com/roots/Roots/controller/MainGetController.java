package com.roots.Roots.controller;


import com.roots.Roots.model.Admin;
import com.roots.Roots.model.Dbfile;
import com.roots.Roots.model.Person;
import com.roots.Roots.model.User;
import com.roots.Roots.repository.DBFileRepository;
import com.roots.Roots.repository.Repo;
import com.roots.Roots.repository.RepoPerson;
import com.roots.Roots.services.ServiceS;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Optional;

@Controller
public class MainGetController {

    @Autowired
    Repo ru;

    @Autowired
    RepoPerson rp;
    @Autowired
    DBFileRepository rf;
    @Autowired
    ServiceS ss;

    @GetMapping("/home")
    public String homePage(){
        return "home";
    }


    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }
   @GetMapping("/")
    public String cover() {
        return "cover";
    }

    @GetMapping("/loulis")
    public String adminlogin() {
        return "adminlogin";
    }

    @GetMapping("/aboutus")
    public String aboutus() {
        return "aboutus";
    }

    @GetMapping("/signup")
    public String getOwnerForm(ModelMap m) {
        User u = new User();
        m.addAttribute("mUser", u);
        return "signup";
    }

    @GetMapping("/agreements")
    public String agreementsPage(ModelMap m, HttpSession session) {
        return "agreements";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "login";
    }

    @GetMapping("/buildtree")
    public String buildtreePage(ModelMap m) {

        m.addAttribute("person", new Person());

        return "buildtree";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable long id){
        rf.deleteById(id);
        return "forward:/seetree";
    }

    @GetMapping("/update/{idperson}")
    public String update(ModelMap m, @PathVariable long idperson) {
        final Optional<Person> p = rp.findById(idperson);
        m.addAttribute("personUpd", p.orElse(new Person()));
        return "update";
    }

    @GetMapping("/go/{iduser}")
    public String go(ModelMap m, @PathVariable long iduser, HttpSession session) {
        Admin a = (Admin) session.getAttribute("admin");
        if (a == null) {
            return "redirect:/loulis";
        }

        List<Dbfile> listimages = rf.showAllImages(iduser);
        m.addAttribute("Dbfile", listimages);
        final List<Person> p = rp.showAll(iduser);
        m.addAttribute("Person", p);
        return "adminseetree" +
                "";
    }

    @GetMapping("/seetree")
    public String seetreePage(ModelMap m, HttpSession session) {
        User u = (User) session.getAttribute("user");
        if (u == null) {
            return "redirect:/login";
        }


        List<Person> list = rp.showAll(u.getIduser());
        List<Dbfile> listimages = rf.showAllImages(u.getIduser());
        m.addAttribute("Person", list);
        m.addAttribute("Dbfile", listimages);

        return "seetree";
    }

    @GetMapping("/adminseeuser")
    public String seeusers(ModelMap m) {

        List<User> list = ru.showAllUSers();
        m.addAttribute("User", list);
        return "adminseeuser";
    }

    @GetMapping("/upload")
    public String upload(HttpSession session, ModelMap m) {
        User u = (User) session.getAttribute("user");
        if (u == null) {
            return "redirect:/login";
        }
        return "uploadfile";
    }


}
