package com.ezen.day67;

import java.util.ArrayList;


import org.springframework.dao.DataAccessException;


public interface TmemberInter {
public void insert(String id,String pw,String name ,String tel,String email,String address,String birthday);
public ArrayList<TmemberVO>   output();
public TmemberVO login(String id,String pw);
public void board_insert(String writer,String title,String content);
public  ArrayList<BoardDTO> print();
public  ArrayList<BoardDTO>     detail(int num);
public void readcntup(int num);
public ArrayList<BoardDTO> replyform(int num);
public void stepup(int groups,int step);
public void replyinput(int num,String writer,String title,String content,int groups,int step,int indent);
//public  void board_delete(int num);
//其捞隆 贸府 333333333333
public int cntnotice();
public ArrayList<BoardDTO> selectnotice(PageDTO dto);
//其捞隆 贸府
public void del(int num);
}
