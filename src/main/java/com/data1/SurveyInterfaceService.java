package com.data1;

import java.util.List;

import org.springframework.stereotype.Component;

public interface SurveyInterfaceService {
	
	public List<Survey> getAllSurvey();
	public void deleteSurvey(int id);
	public void saveOrUpdate(Survey survey);
	public Survey getSurveyById(int id);

}
