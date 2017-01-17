package com.capstone.project.dao;

import java.util.ArrayList;

import com.capstone.project.dto.ReservationDto;

public interface ReservationDao {
	public ArrayList<ReservationDto> getStudentRecordDao(String userID);
	public ArrayList<ReservationDto> getOneClickDao(String userID);
	public void deleteReservation(String reservationTime); 
	public ArrayList<String> getTimeTableDao(String buildingName, String classRoomSize, String dateTime);
	public ArrayList<ReservationDto> getProcessingRecordDao();
	public void insertReservation(String userID, String buildingName, String classRoomName, String reservationTime, String userReason);
}
