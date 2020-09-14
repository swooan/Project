package com.javaex.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.model.ShopDao;
import com.javaex.model.ShopUserDao;
import com.javaex.model.ShopUserVo;

@Controller
public class ListController {

	@Autowired
	ShopDao dao;

	@Autowired
	ShopUserDao userDao;

	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mav) {
		System.out.println("/BobPool/list");
		mav.addObject("shoplist", dao.shopList());
		mav.setViewName("list");
		return mav;
	}

	@RequestMapping("/detail")
	public ModelAndView detail(ModelAndView mav, HttpServletRequest request) {
		System.out.println("/BobPool/detail");
		int shopId = Integer.parseInt(request.getParameter("shopId"));
		mav.addObject("shopOne", dao.shopOne(shopId));
		mav.setViewName("detail/detail");
		return mav;
	}

	@RequestMapping("/login")
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException {
		System.out.println("/BobPool/login");

		String email = request.getParameter("user_id");
		String password = request.getParameter("user_pw");
		System.out.println("email : " + email + "\npassword : " + password);

		ShopUserVo user;
		if (userDao.loginCheck(email) != null) {
			user = userDao.loginCheck(email);
			System.out.println("user : " + user);
			response.getWriter().write("success");
			session.setAttribute("sessionID", email);
		} else {
			System.out.println("ID가 존재하지않음");
			response.getWriter().write("fail");
		}
	}

	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView mav, HttpSession session) {
		System.out.println("/BobPool/logout");
		session.setAttribute("sessionID", null);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping("/join")
	public ModelAndView signup(ModelAndView mav,HttpServletRequest req) {
		System.out.println("/BobPool/signup");
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		String name = req.getParameter("name");
		String birth = req.getParameter("bir_year")+"-"+req.getParameter("bir_mon")+"-" + req.getParameter("bir_day");
		String gender = req.getParameter("gender");
		String phone = req.getParameter("phone");
		int joinType = Integer.parseInt(req.getParameter("join_type"));
		
		if(joinType == 1) {
			userDao.signUp(new ShopUserVo(email, pw, name, gender, birth, phone, "0", 0));
		}else {
			String buisnessNumber = req.getParameter("buisness_number");
			String buisnessName = req.getParameter("buisness_name");
			String buisnessAddress = req.getParameter("buisness_address");
			String buisnessAddressEtc = req.getParameter("buisness_address_etc");
			String buisnessFoodType = req.getParameter("buisness_food_type");
			
			System.out.println(buisnessNumber + " " + buisnessName + " " + buisnessAddress + " " + buisnessAddressEtc + " " + buisnessFoodType);
			userDao.signUp(new ShopUserVo(email, pw, name, gender, birth, phone, "1", 0));
		}		
		mav.setViewName("main");		
		return mav;
	}

}
