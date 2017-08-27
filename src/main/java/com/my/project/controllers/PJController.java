package com.my.project.controllers;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.project.common.Bbs2WebConstants;
import com.my.project.common.CafeWebConstants;
import com.my.project.services.cafe.IServiceCafe;


/**
 * Handles requests for the application home page.
 */
@Controller
public class PJController {
	
	private static final Logger logger = LoggerFactory.getLogger(PJController.class);
	
	@Autowired
	@Qualifier("servicecafe")
	private IServiceCafe svrcafe;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model,HttpSession session) {
		logger.info("index");
		
		if(session.getAttribute(CafeWebConstants.SESSION_NAME) != null){
			session.removeAttribute(CafeWebConstants.SESSION_NAME);
			return "home";
		}else if(session.getAttribute(Bbs2WebConstants.SESSION_NAME) != null){
			session.removeAttribute(Bbs2WebConstants.SESSION_NAME);
			return "home";
		}
		else{
			return "home";
		}
		
		
	}	
}
