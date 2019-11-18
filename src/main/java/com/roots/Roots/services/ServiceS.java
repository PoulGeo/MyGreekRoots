package com.roots.Roots.services;

import com.roots.Roots.model.Admin;
import com.roots.Roots.model.Dbfile;
import com.roots.Roots.model.Person;
import com.roots.Roots.model.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface ServiceS {

        void insertUserToDB(User u);
        Person insertPersonToDB(Person p);
        List<User> showAllUSers();
        List<User> showUserBySurname(String surname);
        List<Person> showUserBySurnamePerson(String surname);
        User findUserByEmail(String lala);
        Admin findAdminByEmail(String lala);
        Person findPersonById(long id);
        Long findLastId();
        List<Person> showAll(long id);
        List<Dbfile> showAllImages(long id);
        Person update(Person p);
        Dbfile storeFile(MultipartFile file, long iduser);
        Dbfile getFile(long id);
        String getStringImage(byte[] i);



}
