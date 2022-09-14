package com.ezen.day67;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private TmemberVO tmemberVO ;
	
	@RequestMapping("/")
	public String ko0()
	{
		return "index";
	}
	@RequestMapping("/index")
public String ko1()
{
	return "index";
}
	@RequestMapping("/input")
	public String ko2()
	{
		return "input";
	}
	
	@RequestMapping(method = RequestMethod.POST,value = "/inputsave")
public String ko3(HttpServletRequest req,Model mo)
{
		String id=req.getParameter("id");
		String pw=req.getParameter("pw");
		String name=req.getParameter("name");
		String tel=req.getParameter("tel");
		String email=req.getParameter("email");
		String address=req.getParameter("address");
		String birthday=req.getParameter("birthday");	
		
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		dao.insert(id,pw,name,tel,email,address,birthday);
		
	return "index";
}
	@RequestMapping("/out")
	public String ko4(Model mo)
	{
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		ArrayList<TmemberVO>alist=dao.output();
		mo.addAttribute("alist", alist);
		return "list";
	}

	@RequestMapping("/login")
	public String login() {
		
		   return "loginForm";
		
	}
	@RequestMapping(method = RequestMethod.POST,value = "/loginaction")
	public ModelAndView login(
            HttpServletRequest request, HttpServletResponse response) 
	{
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		tmemberVO =dao.login(id,pw);
		ModelAndView mav = new ModelAndView();
	
	if(tmemberVO != null) {
	    HttpSession session = request.getSession();
	    session.setAttribute("member", tmemberVO);
	    session.setAttribute("isLogOn", true);
	    mav.setViewName("redirect:out");
	}else {
		
	     mav.setViewName("redirect:input");
	}
	return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:index");
		return mav;
	}	
	@RequestMapping("/board_input")
	public String ko8()
	{
		return "board_input";
	}
	@RequestMapping(method = RequestMethod.POST,value ="/board_inputsave")
	public String ko9(HttpServletRequest req, Model mo)
	{
		String writer = req.getParameter("writer");
		String title = req.getParameter("title");
		String content = req.getParameter("content").replace("\r\n", "<br>");
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
					dao.board_insert(writer,title,content);
		return "index";
	}
	
	@RequestMapping("/board_out")
	public String ko10(HttpServletRequest req,Model mo)
	{
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		      ArrayList<BoardDTO> alist  =  dao.print();
		     mo.addAttribute("list", alist);
		return "board_list";
	}
	@RequestMapping("/detailview")  //자세히보기 ...조회수 1이 증가ㅏ
	public String ko11(HttpServletRequest req,Model mo)
	{
		int num = Integer.parseInt(req.getParameter("num"));
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		readcntup(num);
	ArrayList<BoardDTO>alist=	dao.detail(num);	
	mo.addAttribute("list", alist);		
		return "detailview";
	}
	private void readcntup(int num) {
	
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		dao.readcntup(num);
	}
	@RequestMapping("/replyview")
	public String ko13(HttpServletRequest req, Model mo)
	{
		int num =Integer.parseInt(req.getParameter("num"));
		System.out.println("NUM = "+num);
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
			ArrayList<BoardDTO>	alist=dao.replyform(num);
			mo.addAttribute("list", alist);
		return "replyform";//답변달기 위한 폼양식
	}
	@RequestMapping(method = RequestMethod.POST,value = "/reply")
	public String ko14(HttpServletRequest req , Model mo)
		{
		int num=Integer.parseInt(req.getParameter("num"));
		int groups=Integer.parseInt(req.getParameter("groups"));
		int step=Integer.parseInt(req.getParameter("step"));
		int indent=Integer.parseInt(req.getParameter("indent"));
		String writer =req.getParameter("writer");
		String title =req.getParameter("title");
		String content =req.getParameter("content").replace("\r\n", "<br>");
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		stepup(groups,step);
		step++;
		indent++;
			dao.replyinput(num,writer,title,content,groups,step,indent);
		
		return "index";
	}
	private void stepup(int groups, int step) {
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		dao.stepup(groups,step);
		
	}
	
	/*
	@RequestMapping("/board_delete")
	public String ko15(HttpServletRequest req,Model mo)
	{
		int num=Integer.parseInt(req.getParameter("num"));
		TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		dao.board_delete(num);
		return "redirect:index";
	}
	*/
	
	
	//페이징처리 55555555555
	   @RequestMapping(value="/notice")
	   public String ko16(HttpServletRequest request, PageDTO dto,Model mo) {
	      String nowPage=request.getParameter("nowPage");
	      String cntPerPage=request.getParameter("cntPerPage");
	      TmemberInter notice = sqlSession.getMapper(TmemberInter.class);
	      int total=notice.cntnotice();
	      if(nowPage==null && cntPerPage == null) {
	         nowPage="1";
	         cntPerPage="5";
	      }
	      else if(nowPage==null) {
	         nowPage="1";
	      }
	      else if(cntPerPage==null) {
	         cntPerPage="5";
	      }      
	      dto=new PageDTO(total,Integer.parseInt(nowPage),Integer.parseInt(cntPerPage));
	      mo.addAttribute("paging",dto);
	      mo.addAttribute("view",notice.selectnotice(dto));
	      return "page";
	   }
	   
	 @RequestMapping(value = "/del")
	 public String del(HttpServletRequest request)
	 {
		 int num=Integer.parseInt(request.getParameter("num"));
		 TmemberInter dao=sqlSession.getMapper(TmemberInter.class);
		 dao.del(num);
			return "redirect:index";

	 }
}
