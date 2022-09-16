package com.ezen.pj09;

import java.text.DateFormat;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private SqlSession sqlSession;
	@RequestMapping(value="/")
	public String lo0(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		session.setAttribute("logindo", false);
		return "main";
	}
	
	@RequestMapping(value="/index")
	public String lo1()
	{
		return "main";
	}

	@RequestMapping(value="/loginaa")
	public String lo2() 
	{
		return "login";
	}	
	
	@RequestMapping(value="/loginCheck", method = RequestMethod.POST)
	public ModelAndView lo3(HttpServletRequest request, RedirectAttributes red)
	{	
		ModelAndView mav=new ModelAndView();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		LoginService ls = sqlSession.getMapper(LoginService.class);
		LoginDTO dto = ls.LoginCheck(id, pw);
		HttpSession session = request.getSession();
		if(dto!=null)
		{
			session.setAttribute("pj09_login", dto);
			session.setAttribute("logindo", true);
			session.setMaxInactiveInterval(300);
			mav.setViewName("redirect:index");
		}
		else 
		{
			red.addAttribute("result","loginfail");
			mav.setViewName("redirect:loginaa");
		}
			return mav;
	}

	@RequestMapping(value="/logout")
	public ModelAndView lo4(HttpServletRequest request) {
			HttpSession session=request.getSession();
			session.removeAttribute("pj09_login");
			session.removeAttribute("loginCheck");
			session.setAttribute("loginCheck",false);
			ModelAndView mav=new ModelAndView();
			mav.setViewName("redirect:index");
			return mav;
	}
	@RequestMapping(method=RequestMethod.GET, value="/*form")
	private ModelAndView form(@RequestParam(value="result", required=false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName(viewName);
		return mv;
	}


	
}
