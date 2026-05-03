package com.glow.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@Autowired
	private WebApplicationContext context;
	
	@RequestMapping("/about")
	public ModelAndView getAboutPage() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("about");
		return mav;
		
	}

	@RequestMapping("/services")
	public ModelAndView getServicesPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("services");
		return mav;
	}
	
	
//	@RequestMapping("/blogs")
//	public ModelAndView getBlogsPage() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("blogs");
//		return mav;
//	}
	
	@RequestMapping("/contactus")
	public ModelAndView getContactPage() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact");
		return mav;
	}
	
	@RequestMapping("/blogs")
	public ModelAndView getBlogsPage() {

	    JdbcTemplate template = context.getBean(JdbcTemplate.class);

	    String query = "SELECT * FROM blog";

	    List<Blog> blogs = template.query(query, new BlogRowMapper());

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("blogs", blogs);
	    mav.setViewName("blogs");

	    return mav;
	}
	
	@RequestMapping("/blog-details")
	public ModelAndView getBlogDetails(@RequestParam("id") int id) {

	    JdbcTemplate template = context.getBean(JdbcTemplate.class);

	    String query = "SELECT * FROM blog WHERE id=?";

	    Blog blog = template.queryForObject(query, new BlogRowMapper(), id);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("blog", blog);
	    mav.setViewName("blog-details");

	    return mav;
	}
	
	@PostMapping("/client")
	public ModelAndView hadleFormSubmitData(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("message") String message ) {
//		System.out.println(name+ email+ message);
		
		JdbcTemplate template = context.getBean(JdbcTemplate.class);
		
		String insert_query = "INSERT INTO client VALUES(?,?,?)";
		
		int status = template.update(insert_query, name, email, message);	
		
		if(status > 0) {
			System.out.println("Message is inserted");
		}else {
			System.out.println("Message not inserted");
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact");
		return mav;
	}

}
