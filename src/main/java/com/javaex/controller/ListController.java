package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.model.BookDao;

@Controller
public class ListController {
	@Autowired
	BookDao dao;
	
	@RequestMapping("/list")
	public ModelAndView list(ModelAndView mav) {
		System.out.println("/hellospring/list");
		return mav;
	}
	
}
