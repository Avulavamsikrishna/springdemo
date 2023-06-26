package com.example.Hotelvisitors.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImp implements InterfacUserService {

	
	@Autowired
	private UserRepository repo;

	@Autowired
	BCryptPasswordEncoder PasswordEncoder;
	public UserServiceImp(UserRepository repo) {
		super();
		this.repo = repo;
}
	@Override
	@Transactional
	public User saveData(User user) {
		User us=new User();
		us.setEmail(user.getEmail());
		us.setId(user.getId());
		us.setName(user.getName());
		us.setPassword(PasswordEncoder.encode(user.getPassword()));
		us.setPlace(user.getPlace());
		
		return repo.save(us);
	}

}
