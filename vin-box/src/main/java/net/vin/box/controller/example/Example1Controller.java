package net.vin.box.controller.example;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import net.vin.box.domain.User;
import net.vin.box.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class Example1Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(Example1Controller.class);
	
	@Autowired
	private UserService userService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/example/example1", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
	
		model.addAttribute("serverTime", formattedDate );
		
		List<User> users = userService.listUser(0);
		System.out.println(users);
		model.addAttribute("userList", users );
		
		return "example/example1";
	}
	
}
