package com.roots.Roots.model;

import javax.persistence.*;
import java.util.Base64;

@Entity
public class Dbfile {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long id;
  @Column
  private String filename;
  @Column
  private String filetype;
  @Lob
  @Column(columnDefinition = "LONGBLOB")
  private byte[] filedata;
  @Column
  private long iduser;
  @Transient
  private String base64Image;

  public Dbfile(String filename, String filetype, byte[] filedata, long iduser) {
    this.filename = filename;
    this.filetype = filetype;
    this.filedata = filedata;
    this.iduser = iduser;
  }

  public Dbfile() {
  }

  public String getBase64Image() {
    base64Image = Base64.getEncoder().encodeToString(this.filedata);
    return base64Image;
  }

  public void setBase64Image(String base64Image) {
    this.base64Image = base64Image;
  }

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getFilename() {
    return filename;
  }

  public void setFilename(String filename) {
    this.filename = filename;
  }

  public byte[] getFiledata() {
    return filedata;
  }

  public void setFiledata(byte[] filedata) {
    this.filedata = filedata;
  }

  public String getFiletype() {
    return filetype;
  }

  public void setFiletype(String filetype) {
    this.filetype = filetype;
  }

  public long getIduser() {
    return iduser;
  }

  public void setIduser(long iduser) {
    this.iduser = iduser;
  }

}
