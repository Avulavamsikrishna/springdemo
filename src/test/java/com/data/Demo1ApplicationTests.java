package com.data;

import java.util.Collection;
import java.util.Map;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.ui.Model;

import com.data1.HomeController;
import com.data1.SurveyInterfaceService;
import com.data1.SurveyRepository;

//@SpringBootTest
@ExtendWith(MockitoExtension.class)
class Demo1ApplicationTests {

	@InjectMocks
	HomeController control = new HomeController();

	@Mock
	private SurveyRepository ram;

	@Mock
	private SurveyInterfaceService service;

	@Test
	public void hometest() {
		String response = control.home();
		Assertions.assertEquals("index.jsp", response);
	}

	@Test
	public void dberrortest() {
		String response = control.databaseError(); // we can use this or
		Assertions.assertEquals("databaseError", response);
	}

	@Test
	public void errortest() {
		Assertions.assertEquals("adminlogin.jsp", control.adminpage());// this
		// syntax: Assertions.assertEquals(expected value, given value) ok bro
		// we have to do for all thilike s bro
	}
}
	