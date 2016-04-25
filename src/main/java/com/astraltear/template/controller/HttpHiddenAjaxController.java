package com.astraltear.template.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.astraltear.template.entity.EmployeesVO;
import com.astraltear.template.entity.FormVO;

@Controller
@RequestMapping("/ajaxHandler/*")
public class HttpHiddenAjaxController {

	private static final Logger logger = LoggerFactory.getLogger(HttpHiddenAjaxController.class);

	@RequestMapping("index")
	public String index() {
		return "/ajaxSample/index";
	}
	
	
	@RequestMapping("jsonSimpleGet")
	@ResponseBody
	public FormVO jsonSimpleGet(@RequestBody FormVO formVO) {
		logger.info("dataHandle:"+formVO.toString());
		return formVO;
	}
	
	@RequestMapping("jsonArrayGet")
	@ResponseBody
	public EmployeesVO jsonArrayGet(@RequestBody EmployeesVO employeesVO) {
		logger.info("jsonArrayGet:"+employeesVO.getEmployees().size());
		for (int i = 0; i < employeesVO.getEmployees().size(); i++) {
			logger.info(employeesVO.getEmployees().get(i).toString());
		}
		
		return employeesVO;
	}
	
	
	@RequestMapping("test/{param1}/{param2}")
	@ResponseBody
	public String methodA(@PathVariable String param1,@PathVariable String param2) {
		logger.info("methodA:"+param1);
		logger.info("methodA:"+param2);
		return "test";
	}
	
	@RequestMapping("appLoader")
	public String appLoader() {
		return "/appLoader/appLoader";
	}
	
	
}
