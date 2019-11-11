package com.roots.Roots.repository;

import com.roots.Roots.model.Admin;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepoAdmin extends CrudRepository<Admin, Long> {

    @Query("select u from Admin u where u.email=?1")
    Admin findAdminByEmail(String lala);

}
