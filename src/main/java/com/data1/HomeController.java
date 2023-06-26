package com.data1;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	 
	private static final int Name = 0;

private static final Logger log = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SurveyService service;
	
    @Autowired
	private SurveyRepository repo;
	
	@RequestMapping("/")
	
	public String home() {
		log.info("this is the home page");
		return "index.jsp";
	}
	/*provide rooting information@RequestMapping.eleminate beam tag@autowired(value="/orders/{id}",method = RequestMethod.GET)
	public String showOrder(@PathVariable("id") int id,Model model) {
		Survey order = repo.getById(id);
		if(order == null) throw new OrderNotFoundException(id);
		model.addAttribute(order);
		return "OrderDetail";
	}*/
	@ExceptionHandler(Exception.class)
	public String databaseError() {
		log.error("excepionhandler error");
		return "databaseError";
	}
	@ExceptionHandler(Exception.class)
	public ModelAndView handleError(HttpServletRequest req,Exception ex){
	ModelAndView mv =new ModelAndView();
	mv.addObject("exception",ex);
	mv.setViewName("error");
	return mv;
	
	}
	@RequestMapping("/adminlogin")
	public String adminpage() {
		log.info("admin error");
		return "adminlogin.jsp";
	}
	
	
	@RequestMapping("/login")
	public String view(@RequestParam("username") String username,@RequestParam("password") String password) {
		if((username.equals("batch")) && (password.equals("1111"))) {
			log.info("login error");
			return "redirect:/listsurveys";        //surveyview.jsp"
		}else {
			log.error("login error");
			return "redirect:/adminlogin";	
		}
	}
	@GetMapping("/listsurveys")
	public String getAlldata(Model m) {
		List<Survey> lists = service.getAllSurvey();
		m.addAttribute("surveylist",lists);
		log.info("Online employee feedback");
		return "surveyview.jsp";
		
	}
	@RequestMapping("/addnew")
	public String addnewrow()
	
	{
		log.info("addnew error");
		return "addform.jsp";
		
	}
   //addform details "save", into listsurvey 
@RequestMapping(value = "/save",method = RequestMethod.POST)
public ModelAndView saveSurvey(@ModelAttribute Survey survey)
{
service.saveOrUpdate(survey);
log.info("save error");
return new ModelAndView("redirect:/listsurveys");
}

	
	@RequestMapping("/deletebyid/{id}")
	public ModelAndView delete(@PathVariable("id") int id) {
		service.deleteSurvey(id);
		log.info("delete id error");
		return new ModelAndView("redirect:/listsurveys");
	}
	
	   
	
	/*@RequestMapping("/updatebyid/{id}")
	public ModelAndView updata(@PathVariable("id") int id,Model model) {
		
		Service s = SurveyService.getSurveyById(id);
		model.addAttribute("task", s);
		return new ModelAndView("redirect:/listsurvey");
	}*/
	
	
	@RequestMapping("/updatesurvey")
	@ResponseBody
	public ModelAndView updateSurvey(@RequestParam("id")int id) 
	{
		Survey m= service.getSurveyById(id);
		Survey mv= service.getSurveyById(Name);
		log.info("updatesurvey error");
		
		 return new ModelAndView("updatesurvey.jsp","survey",m);
		
	
}
	
}
