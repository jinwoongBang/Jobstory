package kr.co.jobstory.mypage.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.jobstory.repository.domain.UserCalendar;
import kr.co.jobstory.repository.mapper.UserCalendarMapper;

@Service
public class UserCalendarServiceImpl implements UserCalendarService{
	
	@Autowired
	private UserCalendarMapper mapper;
	
	@Override
	public List<UserCalendar> list() {
		return mapper.selectMemo();
	}
	
	@Override
	public void insertMemo(UserCalendar userCalendar) {
		mapper.insertMemo(userCalendar);
	}
	
}
