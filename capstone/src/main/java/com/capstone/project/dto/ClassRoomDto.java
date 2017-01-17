package com.capstone.project.dto;

public class ClassRoomDto {
	private String buildingName;
	private String classRoomName;
	private String classRoomSize;
	private int classTime;
	private String classDay;
	
	public String getBuildingName() {
		return buildingName;
	}
	public void setBuildingName(String buildingName) {
		this.buildingName = buildingName;
	}
	public String getClassRoomName() {
		return classRoomName;
	}
	public void setClassRoomName(String classRoomName) {
		this.classRoomName = classRoomName;
	}
	public String getClassRoomSize() {
		return classRoomSize;
	}
	public void setClassRoomSize(String classRoomSize) {
		this.classRoomSize = classRoomSize;
	}
	public int getClassTime() {
		return classTime;
	}
	public void setClassTime(int classTime) {
		this.classTime = classTime;
	}
	public String getClassDay() {
		return classDay;
	}
	public void setClassDay(String classDay) {
		this.classDay = classDay;
	}
}
