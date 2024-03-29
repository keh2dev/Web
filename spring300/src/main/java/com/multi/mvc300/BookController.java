package com.multi.mvc300;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 스프링에서 제어하는 역할로 등록!
public class BookController {
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert3")
	public void insert(BookVO bag) {
		System.out.println("insert요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.insert(bag);
	}

	@RequestMapping("update3")
	public void update(BookVO bag) {
		System.out.println("update요청됨.");
		System.out.println(bag);
		System.out.println(dao);
		dao.update(bag);
	}

	@RequestMapping("delete3")
	public void delete(int id) {
		System.out.println("delete요청됨.");
		System.out.println(id);
		System.out.println(dao);
		dao.delete(id);
	}

}
