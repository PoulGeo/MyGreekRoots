package com.roots.Roots.repository;

import com.roots.Roots.model.Person;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepoPerson extends CrudRepository<Person, Long> {

    @Query(value = "SELECT p.idperson from person p" , nativeQuery = true)
    public Person findPersonByIdperson(long id);

    @Query(value = "SELECT p.idperson FROM person p ORDER BY 1 desc limit 1", nativeQuery=true)
    public long findLastInsertedID();

    @Query(value = "SELECT * FROM person p JOIN user u ON p.userid = u.iduser WHERE u.iduser = :iduser ", nativeQuery = true)
    public List<Person> showAll(long iduser);


}
