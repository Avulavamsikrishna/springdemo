package com.data1;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
@Service
public class SurveyService implements SurveyInterfaceService {
	@Autowired
	private SurveyRepository repo;

	@Override
	public List<Survey> getAllSurvey() {
		return repo.findAll();
	}

	@Override
	public void deleteSurvey(int id) {
		repo.deleteById(id);
	}

public SurveyService() {
	// TODO Auto-generated constructor stub
}
	@Override
	public void saveOrUpdate(Survey survey) {
		Survey s = new Survey();
		s.setId(survey.getId());
		s.setName(survey.getName());
		s.setRole(survey.getRole());
		s.setFeedback(survey.getFeedback());
		repo.save(s);
		
	}

	@Override
	public  Survey getSurveyById(int id) {
		
		Optional<Survey> list = repo.findById(id);
		Survey s = null;
		if(list.isPresent()) {
			s= list.get();
		}
			
		return s;
	}

	
}
