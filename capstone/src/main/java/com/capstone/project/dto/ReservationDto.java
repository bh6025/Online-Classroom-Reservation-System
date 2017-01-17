package com.capstone.project.dto;

public class ReservationDto {
	
	private String userID;
	private String buildingName;
	private String classRoomName;
	private String reservationTime;
	private String approvalInfo;
	private String userReason;
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
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
	private String adminReason;
	
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
