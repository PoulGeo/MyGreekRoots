package com.roots.Roots.model;

import org.springframework.stereotype.Controller;

import javax.persistence.*;

@Entity
public class Admin {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long adminid;
  @Column
  private String email;
  @Column
  private String password;


  public long getAdminid() {
    return adminid;
  }

  public void setAdminid(long adminid) {
    this.adminid = adminid;
  }


  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }


  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

}
