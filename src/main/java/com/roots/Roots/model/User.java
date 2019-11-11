package com.roots.Roots.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class User {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long iduser;
  @Column
  private String name;
  @Column
  private String email;
  @Column
  private String password;
  @Column
  private String surname;
 @Column
  private String payment;

    public User() {
    }

    public String getPayment() {
    return payment;
  }

  public void setPayment(String payment) {
    this.payment = payment;
  }

  public long getIduser() {
    return iduser;
  }

  public void setIduser(long iduser) {
    this.iduser = iduser;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
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


  public String getSurname() {
    return surname;
  }

  public void setSurname(String surrname) {
    this.surname = surrname;
  }

}
