package kr.co.jobstory.repository.mapper;

import java.util.List;

import kr.co.jobstory.repository.domain.Comment;
import kr.co.jobstory.repository.domain.CommunityPage;
import kr.co.jobstory.repository.domain.InterBoard;
import kr.co.jobstory.repository.domain.InterviewReport;

public interface InterViewMapper {
	List<InterBoard> selectBoard(CommunityPage page);
	
	InterBoard selectBoardByNo(int no);
	int listCount();
	void insertBoard(InterBoard board);
	int deleteBoard(int no);
	void viewCntUp(int no);
	int updateBoard(InterBoard board);
	void report(InterviewReport report);
	InterviewReport reportSelect(InterviewReport report);
	void insertComment(Comment comment);
	List<Comment> selectComment(int boardNo);
	void updateComment(Comment comment);
	void deleteComment(int commentNo);


}
