package com.ezen.day67;

import org.springframework.stereotype.Component;
@Component("tmemberVO")
public class TmemberVO {
String id,pw,name,tel,email,address,birthday;

public TmemberVO() {
	super();
	// TODO Auto-generated constructor stub
}

public TmemberVO(String id, String pw, String name, String tel, String email, String address, String birthday) {
	super();
	this.id = id;
	this.pw = pw;
	this.name = name;
	this.tel = tel;
	this.email = email;
	this.address = address;
	this.birthday = birthday;
}

public String getId() {	return id;}
public void setId(String id) {	this.id = id;}
public String getPw() {	return pw;}
public void setPw(String pw) {	this.pw = pw;}
public String getName() {	return name;}
public void setName(String name) {	this.name = name;}
public String getTel() {	return tel;}
public void setTel(String tel) {	this.tel = tel;}
public String getEmail() {	return email;}
public void setEmail(String email) {	this.email = email;}
public String getAddress() {	return address;}
public void setAddress(String address) {	this.address = address;}
public String getBirthday() {	return birthday;}
public void setBirthday(String birthday) {	this.birthday = birthday;}

}
/*
 
  CREATE TABLE "T_MEMBER" 
   (	"ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"PW" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"TEL" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"ADDRESS" VARCHAR2(20 BYTE), 
	"BIRTHDAY" VARCHAR2(20 BYTE), 
	 CONSTRAINT "T_MEMBER_PK" PRIMARY KEY ("ID")
 *
 */
