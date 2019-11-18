package com.roots.Roots.services;


import com.roots.Roots.file_upload.exception.FileStorageException;
import com.roots.Roots.model.Admin;
import com.roots.Roots.model.Dbfile;
import com.roots.Roots.model.Person;
import com.roots.Roots.model.User;
import com.roots.Roots.repository.DBFileRepository;
import com.roots.Roots.repository.Repo;
import com.roots.Roots.repository.RepoAdmin;
import com.roots.Roots.repository.RepoPerson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

@Service
@Transactional
public class ServiceImplem implements ServiceS {

    @Autowired
    Repo rs;
    @Autowired
    RepoPerson rp;
    @Autowired
    RepoAdmin ra;
    @Autowired
    private DBFileRepository dbFileRepository;

    @Override
    public void insertUserToDB(User u) {
        rs.save(u);
    }

    @Override
    public Person insertPersonToDB(Person p) {
        return rp.save(p);
    }

    @Override
    public List<User> showAllUSers() {
        return rs.showAllUSers();
    }

    @Override
    public List<User> showUserBySurname(String surname) {
        return rs.showUserBySurname(surname);
    }

    @Override
    public List<Person> showUserBySurnamePerson(String surname) {
        return rp.showUserBySurname(surname);
    }

    @Override
    public User findUserByEmail(String lala) {
        return rs.findUserByEmail(lala);
    }

    @Override
    public Admin findAdminByEmail(String lala) {
        return ra.findAdminByEmail(lala);
    }

    @Override
    public Person findPersonById(long id) {
        return rp.findPersonByIdperson(id);
    }


    @Override
    public Long findLastId() {
        return rp.findLastInsertedID();
    }

    @Override
    public List<Person> showAll(long iduser) {
        return rp.showAll(iduser);
    }

    @Override
    public List<Dbfile> showAllImages(long id) {
        return dbFileRepository.showAllImages(id);
    }

    @Override
    public Person update(Person p) {
        System.out.println("PERSON TO UPDATE " + p.toString());
        return rp.save(p);
    }

    public Dbfile storeFile(MultipartFile file, long iduser) {
        // Normalize file name
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());

        try {
            // Check if the file's name contains invalid characters
            if (fileName.contains("..")) {
                throw new FileStorageException("Sorry! Filename contains invalid path sequence " + fileName);
            }

            Dbfile dbFile = new Dbfile(fileName, file.getContentType(), file.getBytes(), iduser);

            return dbFileRepository.save(dbFile);
        } catch (IOException ex) {
            throw new FileStorageException("Could not store file " + fileName + ". Please try again!", ex);
        }
    }

    public Dbfile getFile(long id) {
        return dbFileRepository.findById(id).orElseThrow(() -> new RuntimeException("NO FILE FOUND"));
    }

    @Override
    public String getStringImage(byte[] i) {

        ResultSet result = null;
        Blob blob = null;
        try {
            assert false;
            blob = result.getBlob("image");
        } catch (SQLException e) {
            e.printStackTrace();
        }

        InputStream inputStream = null;
        try {
            inputStream = blob.getBinaryStream();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead = -1;

        while (true) {
            try {
                if ((bytesRead = inputStream.read(buffer)) == -1) break;
            } catch (IOException e) {
                e.printStackTrace();
            }
            outputStream.write(buffer, 0, bytesRead);
        }

        byte[] imageBytes = outputStream.toByteArray();

        String base64Image = Base64.getEncoder().encodeToString(imageBytes);

        try {
            inputStream.close();
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        return base64Image;
    }
}
