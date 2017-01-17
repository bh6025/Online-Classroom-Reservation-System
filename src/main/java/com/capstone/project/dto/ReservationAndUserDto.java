package com.capstone.project.dto;

public class ReservationAndUserDto {
	
	private String userID;
	private String buildingName;
	private String classRoomName;
	private String reservationTime;
	private String approvalInfo;
	private String userReason;
	private String adminReason;
	private String userPW;
	private String studentNum;
	private String name;
	private String major;
	private String email;
	private String tel;
	private String question;
	private String answer;
	
	
	public String getUserReason() {
		return userReason;
	}
	public void setUserReason(String userReason) {
		this.userReason = userReason;
	}
	public String getAdminReason() {
		return adminReason;
	}
	public void setAdminReason(String adminReason) {
		this.adminReason = adminReason;
	}
	
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public String getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
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
	public String getReservationTime() {
		return reservationTime;
	}
	public void setReservationTime(String reservationTime) {
		this.reservationTime = reservationTime;
	}
	public String getApprovalInfo() {
		return approvalInfo;
	}
	public void setApprovalInfo(String approvalInfo) {
		this.approvalInfo = approvalInfo;
	}
	
	
}
