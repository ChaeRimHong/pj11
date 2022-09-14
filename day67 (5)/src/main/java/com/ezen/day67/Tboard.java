package com.ezen.day67;

public class Tboard {
 int level1,articleno,parentno;
 String title,content,id,writeday ;
public Tboard() {
	super();
	// TODO Auto-generated constructor stub
}
public Tboard(int level1, int articleno, int parentno, String title, String content, String id, String writeday) {
	super();
	this.level1 = level1;
	this.articleno = articleno;
	this.parentno = parentno;
	this.title = title;
	this.content = content;
	this.id = id;
	this.writeday = writeday;
}
public int getLevel1() {
	return level1;
}
public void setLevel1(int level1) {
	this.level1 = level1;
}
public int getArticleno() {
	return articleno;
}
public void setArticleno(int articleno) {
	this.articleno = articleno;
}
public int getParentno() {
	return parentno;
}
public void setParentno(int parentno) {
	this.parentno = parentno;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getWriteday() {
	return writeday;
}
public void setWriteday(String writeday) {
	this.writeday = writeday;
}
 
}
