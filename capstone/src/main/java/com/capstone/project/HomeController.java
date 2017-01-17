package com.capstone.project;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.capstone.project.dao.*;
import com.capstone.project.dto.ClassRoomDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	

	@RequestMapping("/login")
	public String login() {
		
		return "/login";
	}
	
	@RequestMapping("/loginConfirm")
	public String loginConfirm(HttpServletRequest request, Model model) {
		UserDao dao = sqlSession.getMapper(UserDao.class);
		if(request.getParameter("checkType") == null) {
			if((dao.loginDao(request.getParameter("userID"), request.getParameter("userPW")) == 1)
					&& dao.getUserInfoDao(request.getParameter("userID")).getType().equals("student")) {
				HttpSession session = request.getSession(true);
				session.setAttribute("id", request.getParameter("userID"));
				
				ReservationDao dao2 = sqlSession.getMapper(ReservationDao.class);	
				model.addAttribute("oneClickInfo", dao2.getOneClickDao((String) session.getAttribute("id")));
				return "/reservation";
			}
			else
				return "/login";
		}
		else if(request.getParameter("checkType").equals("checked")) {
			if(dao.loginDao(request.getParameter("userID"), request.getParameter("userPW")) == 1) {
				HttpSession session = request.getSession(true);
				session.setAttribute("id", request.getParameter("userID"));
				
				return "/approvalAndReject";
			}
			else
				return "/login";
		}
		else {
			return "/login";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("id");

		return "redirect:login";
	}
	
	@RequestMapping("/joinUs")
	public String joinUsForm() {
		
		return "/joinUs";
	}
	
	@RequestMapping("/joinUsConfirm")
	public String joinUs(HttpServletRequest request, Model model) {
		UserDao dao = sqlSession.getMapper(UserDao.class);
		dao.createUserDao(request.getParameter("userID"), request.getParameter("userPW"), request.getParameter("studentNum"), request.getParameter("name"), request.getParameter("major"), request.getParameter("email"), request.getParameter("tel"), request.getParameter("question"), request.getParameter("answer"), "student");
		
		return "redirect:login";
	}
	
	@RequestMapping("/findID")
	public String findID(HttpServletRequest request) {
		
		return "/findID";
	}
	
	@RequestMapping("/findIDResult")
	public String findIDResult(HttpServletRequest request, Model model) {
		UserDao dao = sqlSession.getMapper(UserDao.class);	
		model.addAttribute("getUserID", dao.findIDDao(request.getParameter("name"), request.getParameter("studentNum"), request.getParameter("email")));
		
		return "redirect:login";
	}
	
	@RequestMapping("/findPW")
	public String findPW() {
		
		return "/findPW";
	}
	
	@RequestMapping("/findPWResult")
	public String findPWResult() {
		
		return "redirect:login";
	}
	
	@RequestMapping("/reservation")
	public String reservation(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession(true);
		session.setAttribute("date", request.getParameter("date"));
		
		return "reservation";
	}
	
	@RequestMapping("/myPage")
	public String myPage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		UserDao dao = sqlSession.getMapper(UserDao.class);
		model.addAttribute("userInfo", dao.getUserInfoDao(id));
		
		return "myPage"; 
	}
	
	@RequestMapping("/myPageConfirm")
	public String myPageConfirm(HttpServletRequest request) {
		UserDao dao = sqlSession.getMapper(UserDao.class);
		dao.modifyUserDao(request.getParameter("userPW"), request.getParameter("major"), request.getParameter("email"), request.getParameter("tel"), request.getParameter("question"), request.getParameter("answer"), request.getParameter("userID"));
		
		return "redirect:reservation";
	}
	
	@RequestMapping("/studentRecord")
	public String studentRecord(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		model.addAttribute("reservationInfo", dao.getStudentRecordDao(id));

		return "studentRecord";
	}
	
	@RequestMapping("/deleteRecord")
	public String delete(HttpServletRequest request, Model model) {
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		dao.deleteReservation(request.getParameter("reservationTime"));
		
		return "redirect:studentRecord";
	}
	
	@RequestMapping("/roomInformation")
	public String roomInformation(HttpServletRequest request, Model model) {	
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		HttpSession session2 = request.getSession(true);
		session2.setAttribute("date", request.getParameter("date"));
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);	
		model.addAttribute("oneClickInfo", dao.getOneClickDao(id));
		
		return "roomInformation";
	}
	
	@RequestMapping("/roomInformationList")
	public String roomInformationConfrim(HttpServletRequest request, Model model) {	
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		UserDao dao = sqlSession.getMapper(UserDao.class);
		
		String[] buildingNameList = request.getParameterValues("buildingName");
		String[] classRoomSizeList = request.getParameterValues("classRoomSize");
		
		ClassRoomDao dao2 = sqlSession.getMapper(ClassRoomDao.class);
		ArrayList<ClassRoomDto> list = dao2.getRoomDao(buildingNameList, classRoomSizeList);
		ArrayList<ClassRoomDto> list2 = dao2.getRecommendDao(dao.getUserInfoDao(id).getMajor(), buildingNameList, classRoomSizeList);
		model.addAttribute("roomInfo", list);
		model.addAttribute("recommendList", list2);
		
		return "roomInformationList";
	}
	
	@RequestMapping("/timeTable")
	public String timeTable(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String date = (String) session.getAttribute("date");
		
		ReservationDao dao = sqlSession.getMapper(ReservationDao.class);
		
		ArrayList<String> notAvailableList = dao.getTimeTableDao(request.getParameter("buildingName"), request.getParameter("classRoomName"), date);
		ArrayList<String> allList = new ArrayList<String>();
		for(int i=0; i<12; i++) allList.add("available");
		
		if(notAvailableList != null) {
			for(int i=0; i<notAvailableList.size(); i++) {
				if(notAvailableList.get(i).charAt(12) == '9') {
					allList.remove(0);
					allList.add(0, "reservated");
				}
				for(int j=10; j<21; j++) {
					if(notAvailableList.get(i).substring(11, 13).equals(j+"")) {
						allList.remove(j-9);
						allList.add(j-9, "reservated");
					}
				}
			}
		}
		model.addAttribute("buildingName", request.getParameter("buildingName"));
		model.addAttribute("classRoomName", request.getParameter("classRoomName"));
		model.addAttribute("timeTableList", allList);
		
		return "timeTable";
	}
	

	@RequestMapping("/adminMypage")
	public String adminMypage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		UserDao dao = sqlSession.getMapper(UserDao.class);
		model.addAttribute("userInfo", dao.getUserInfoDao(id));
		
		return "/adminMypage"; 
	}
	
	@RequestMapping("/approvalAndReject")
	public String approvalAndReject(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		AdminReservationDao dao = sqlSession.getMapper(AdminReservationDao.class);	
		model.addAttribute("processingInfo", dao.getProcessingRecordDao());
		
		return "approvalAndReject";
	}
	
	@RequestMapping("/approveReservation")
	public String approveReservation(HttpServletRequest request, Model model) {
		AdminReservationDao dao = sqlSession.getMapper(AdminReservationDao.class);
		
		dao.approveReservation(request.getParameter("userID"), request.getParameter("buildingName"), request.getParameter("classRoomName"), request.getParameter("reservationTime"));
		
		return "redirect:approvalAndReject";
	}

	@RequestMapping("/rejectReservation")
	public String rejectReservation(HttpServletRequest request, Model model) {
		AdminReservationDao dao = sqlSession.getMapper(AdminReservationDao.class);
		System.out.println(request.getParameter("adminReason"));
		dao.rejectReservation(request.getParameter("userID"), request.getParameter("buildingName"), request.getParameter("classRoomName"), request.getParameter("reservationTime"), request.getParameter("adminReason"));
		
		return "redirect:approvalAndReject";
	}

	
	@RequestMapping("/adminStateCheck")
	public String adminStateCheck(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		
		AdminReservationDao dao = sqlSession.getMapper(AdminReservationDao.class);
		model.addAttribute("AllInfo", dao.getAllRecordDao());
		
		return "adminStateCheck";
	}
	
	
}
