package com.roots.Roots.repository;

import com.roots.Roots.model.Dbfile;
import com.roots.Roots.model.Person;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DBFileRepository extends CrudRepository<Dbfile, Long> {
    @Query(value = "SELECT * FROM dbfile f JOIN user u ON f.iduser = u.iduser WHERE u.iduser = :iduser ", nativeQuery = true)
    public List<Dbfile> showAllImages(long iduser);
}
