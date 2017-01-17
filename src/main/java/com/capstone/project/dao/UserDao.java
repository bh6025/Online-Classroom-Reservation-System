package com.capstone.project.dao;

import java.util.ArrayList;

import com.capstone.project.dto.UserDto;

public interface UserDao {
	
	public ArrayList<UserDto> listDao();
	public void createUserDao(String userID, String userPW, String studentNum, String name, String major, String email, String tel, String question, String answer, String type);
	public int loginDao(String userID, String userPW);
	public String findIDDao(String name, String studentNum, String email);
	public String findPWDao(String userID, String question, String answer);
	public UserDto getUserInfoDao(String userID);
	public void modifyUserDao(String userPW, String major, String email, String tel, String question, String answer, String userID);
}
