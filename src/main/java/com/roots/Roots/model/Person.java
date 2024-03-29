package com.roots.Roots.model;

import javax.persistence.*;

@Entity
public class Person {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private long idperson;
  @Column
  private String name;
  @Column
  private String dates;
  @Column
  private String info;
  @Column
  private String wife;
  @Column
  private String wifedates;
  @Column
  private String wifeinfo;
  @Column
  private long userid;
  @Column
  private String siblings;
  @Column
  private String type;


  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public long getIdperson() {
    return idperson;
  }

  public void setIdperson(long idperson) {
    this.idperson = idperson;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getDates() {
    return dates;
  }

  public void setDates(String dates) {
    this.dates = dates;
  }


  public String getInfo() {
    return info;
  }

  public void setInfo(String info) {
    this.info = info;
  }


  public String getWife() {
    return wife;
  }

  public void setWife(String wife) {
    this.wife = wife;
  }


  public String getWifedates() {
    return wifedates;
  }

  public void setWifedates(String wifedates) {
    this.wifedates = wifedates;
  }


  public String getWifeinfo() {
    return wifeinfo;
  }

  public void setWifeinfo(String wifeinfo) {
    this.wifeinfo = wifeinfo;
  }


  public long getUserid() {
    return userid;
  }

  public void setUserid(long userid) {
    this.userid = userid;
  }


  public String getSiblings() {
    return siblings;
  }

  public void setSiblings(String siblings) {
    this.siblings = siblings;
  }

}
