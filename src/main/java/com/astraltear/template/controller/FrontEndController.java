package com.astraltear.template.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.astraltear.template.entity.Employee;

@Controller
public class FrontEndController {
	
	private static final Logger logger = LoggerFactory.getLogger(FrontEndController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/jstlSample")
	public String jstlSample(Model model) {
		logger.info("call jstlSample!!!");
		
		List<Employee> empList = new ArrayList<Employee>();
		Employee emp1 = new Employee();
        emp1.setId(1); 
        emp1.setName("Pankaj");
        emp1.setRole("Developer");
        
        Employee emp2 = new Employee();
        emp2.setId(2); 
        emp2.setName("Meghna");
        emp2.setRole("Manager");
        
        empList.add(emp1);
        empList.add(emp2);
        
        model.addAttribute("empList", empList);
        
        model.addAttribute("htmlTagData", "<br/> creates a new line.");
        model.addAttribute("url", "http://www.journaldev.com");
		
		return "jstlSample";
	}
	
	
	@RequestMapping("/tilesPage")
	public String tilesPage() {
		logger.info("call tilesPage!!!");
		return "tilesPage";
	}
	
	@RequestMapping("/bodyArticles")
	public String bodyArticles() {
		logger.info("call bodyArticles!!!");
		return "details/bodyArticles";
	}
	
	@RequestMapping("/wildCardTest")
	public String wildCardTest() {
		logger.info("call wildCardTest!!!");
		return "cardWILD/wildCardTest";
	}
	
	
	@RequestMapping("/tiles3Step")
	public String tiles3Step() {
		logger.info("call tiles3Step!!!");
		return "cardWILD/tiles3Step/tiles3Step";
	}
	
	
	@RequestMapping("/webpageStandard")
	public String jsintegrate() {
		logger.info("call jsintegrate!!!");
		return "webpageStandard";
	}
	
}
