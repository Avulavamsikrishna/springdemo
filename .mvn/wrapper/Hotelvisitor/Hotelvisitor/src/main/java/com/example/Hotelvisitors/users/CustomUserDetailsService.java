package com.example.Hotelvisitors.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomUserDetailsService implements UserDetailsService{

	
	@Autowired
	private UserRepository repo;
	@Override
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		User user=repo.findByName(name);
		  if (user == null) {
	            throw new UsernameNotFoundException("User not found");
	        }
	        return new CustomUserDetails(user);
	    }

}
