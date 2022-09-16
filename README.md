# pj11
=======================================================
홈컨트롤러 부분
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

--------------------------------------------------------------------------------------------------------
로그인서비스(인터페이스)
package com.ezen.pj09;

public interface LoginService {
	public LoginDTO LoginCheck(String id,String pw);
}
---------------------------------------------------------------------------------------------------
로그인다오(xml)
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper
  PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN"
  "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<mapper namespace="com.ezen.pj09.LoginService">

<select id="loginaa" resultType="com.ezen.pj09.LoginDTO">
	SELECT * FROM pj09_login WHERE ID = #{param1}  AND PW = #{param2}
</select>

</mapper>
--------------------------------------------------------------------------------------------
top.jsp 시간 추가한거
<script type="text/javascript">
setInterval("dpTime()", 1000);
function dpTime() {
   var now = new Date();
   hours = now.getHours();
   min = now.getMinutes();
   sec = now.getSeconds();

   if(hours > 12){
      hours -= 12;
      ampm = "오후";
   } else {
      ampm = "오전"
   }
   if(hours < 10){
      hours = "0"+hours;
   }
   if(min < 10){
      min = "0"+min;
   }
   if(sec < 10){
      sec = "0"+sec;
   }

   document.getElementById("dpTime").innerHTML = ampm + " " + hours + ":" + min + ":" + sec
}
</script>

----------------------------------------------------------------------------------------------------
로그인DTO부분
public class LoginDTO {
		String id,pw;

		public LoginDTO() {
			super();
			// TODO Auto-generated constructor stub
		}

		public LoginDTO(String id, String pw) {
			super();
			this.id = id;
			this.pw = pw;
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPw() {
			return pw;
		}

		public void setPw(String pw) {
			this.pw = pw;
		}

>> 0916 연진추가 <<