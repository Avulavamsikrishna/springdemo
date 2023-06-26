package com.data1;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class Excps {
	@ExceptionHandler(Exception.class)
	 public ModelAndView errorhandler() {
		return new ModelAndView("error.jsp","exception","specify the correct url");
	}
}
