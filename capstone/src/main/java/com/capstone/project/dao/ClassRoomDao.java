package com.capstone.project.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.capstone.project.dto.ClassRoomDto;

public interface ClassRoomDao {
	public ArrayList<ClassRoomDto> getClassRoomDao(String buildingName, String classRoomName, String classRoomSize);
	public ArrayList<ClassRoomDto> getRoomDao(@Param("buildingName") String[] buildingName, @Param("classRoomSize") String[] classRoomSize);
	public ArrayList<ClassRoomDto> getRecommendDao(String major, @Param("buildingName") String[] buildingName, @Param("classRoomSize") String[] classRoomSize);
}
