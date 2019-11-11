package com.roots.Roots.repository;

import com.roots.Roots.model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Repo extends CrudRepository<User, Long> {

    @Query(value= "select u from User u where u.email=?1")
    User findUserByEmail(String lala);

    @Query(value= "Select u from User u")
    List<User> showAllUSers();



}
