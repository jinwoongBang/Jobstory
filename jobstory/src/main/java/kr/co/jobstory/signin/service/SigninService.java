package kr.co.jobstory.signin.service;

import java.util.List;

import kr.co.jobstory.repository.domain.CompReviewBoard;
import kr.co.jobstory.repository.domain.Company;
import kr.co.jobstory.repository.domain.LikeAndHate;
import kr.co.jobstory.repository.domain.Recruitment;
import kr.co.jobstory.repository.domain.User;

public interface SigninService {
	void social(User user);
	String selectId(String id);
	User selectUser(User user);
	Company selectCompany(int memberNo);
	List<LikeAndHate> like(int memberNo);
	List<LikeAndHate> hate(int memberNo);
	List<CompReviewBoard> avg(String id);
	Integer recList(int memberNo);
	int volunteerList(int memberNo);
}
