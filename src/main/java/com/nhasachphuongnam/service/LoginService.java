package com.nhasachphuongnam.service;

import java.util.List;

import com.nhasachphuongnam.model.Login;

public interface LoginService {
	
	boolean add(Login login);
	
	boolean update(Login login);
	
	boolean delete(String ma);
	
	Login getByID(String ma);
	
	List<Login> getAll();
	
	Boolean checkLogin(Login login);
	
}
