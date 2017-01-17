package com.capstone.project.dao;

import java.util.ArrayList;

import com.capstone.project.dto.ReservationDto;
import com.capstone.project.dto.ReservationAndUserDto;;

public interface AdminReservationDao {
	public ArrayList<ReservationAndUserDto> getProcessingRecordDao();
	public ArrayList<ReservationAndUserDto> getAllRecordDao();
	public void approveReservation(String userID, String buildingName, String classRoomName, String reservationTime);
	public void rejectReservation(String userID, String buildingName, String classRoomName, String reservationTime, String adminReason);
}
