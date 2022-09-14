package com.ezen.day67;

public class BoardDTO {
	int num;
	String writer,title,content,writeday;
	int readcnt,groups,step,indent;
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDTO(int num, String writer, String title, String content, String writeday, int readcnt, int groups,
			int step, int indent) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.writeday = writeday;
		this.readcnt = readcnt;
		this.groups = groups;
		this.step = step;
		this.indent = indent;
	}
	public int getNum() {		return num;	}
	public void setNum(int num) {		this.num = num;	}
	public String getWriter() {		return writer;	}
	public void setWriter(String writer) {		this.writer = writer;	}
	public String getTitle() {		return title;	}
	public void setTitle(String title) {		this.title = title;	}
	public String getContent() {		return content;	}
	public void setContent(String content) {		this.content = content;	}
	public String getWriteday() {		return writeday;	}
	public void setWriteday(String writeday) {		this.writeday = writeday;	}
	public int getReadcnt() {		return readcnt;	}
	public void setReadcnt(int readcnt) {		this.readcnt = readcnt;	}
	public int getGroups() {		return groups;	}
	public void setGroups(int groups) {		this.groups = groups;	}
	public int getStep() {		return step;	}
	public void setStep(int step) {		this.step = step;	}
	public int getIndent() {		return indent;	}
	public void setIndent(int indent) {		this.indent = indent;	}	
}
/*
 CREATE TABLE "T_BOARD" 
   (	"NUM" NUMBER(6,0) NOT NULL ENABLE, 
	"WRITER" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(300 BYTE), 
	"WRITEDAY" DATE DEFAULT sysdate, 
	"READCNT" NUMBER(6,0) DEFAULT 0, 
	"GROUPS" NUMBER(6,0) DEFAULT 0, 
	"STEP" NUMBER(6,0) DEFAULT 0, 
	"INDENT" NUMBER(6,0) DEFAULT 0, 
	 CONSTRAINT "T_BOARD_PK" PRIMARY KEY ("NUM")
 */
