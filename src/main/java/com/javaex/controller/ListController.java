package com.javaex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
		System.out.println("/hellospring/list");
		mav.addObject("shoplist",dao.shopList());
		mav.setViewName("list");
		return mav;
	}
	@RequestMapping("/detail")
	public ModelAndView detail(ModelAndView mav,HttpServletRequest request) {
		System.out.println("/hellospring/detail");
		int shopId = Integer.parseInt(request.getParameter("shopId"));
		mav.addObject("shopOne",dao.shopOne(shopId));
		mav.setViewName("detail2_ajax");
		return mav;
	}
	
	@RequestMapping("/login")
	public ModelAndView login(ModelAndView mav,HttpSession session,HttpServletRequest request) {
		System.out.println("/BobPool/login");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println("email : " + email + "\npassword : " + password);
		
		ShopUserVo user;
		if(userDao.loginCheck(email) != null) {
			user = userDao.loginCheck(email);
			System.out.println("user : "+ user);
			session.setAttribute("sessionID", email);
			mav.setViewName("main");
		}else {
			System.out.println("ID가 존재하지않음");
			mav.setViewName("main");
		}		
		
		return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(ModelAndView mav,HttpSession session) {
		System.out.println("/BobPool/logout");		
		session.setAttribute("sessionID", null);
		mav.setViewName("main");
		return mav;
	}
	
}
