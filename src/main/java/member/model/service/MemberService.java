package member.model.service;

import java.sql.Connection;

import common.JDBCTemplate;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {
	
	private MemberDAO mDao;
	private JDBCTemplate jdbcTemplate;
	
	public MemberService() {
		mDao = new MemberDAO();
		jdbcTemplate = JDBCTemplate.getInstance();
	}
	
	public int insertMember(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.insertMember(conn, member);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		} else {
			jdbcTemplate.rollback(conn);
		} 
		jdbcTemplate.close(conn);
		return result;
	}

	public int updateMember(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.updateMember(conn, member);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		} else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public int deleteMember(String memberId) {
		Connection conn = jdbcTemplate.createConnection();
		int result = mDao.deleteMember(conn, memberId);
		if(result > 0) {
			jdbcTemplate.commit(conn);
		} else {
			jdbcTemplate.rollback(conn);
		}
		jdbcTemplate.close(conn);
		return result;
	}

	public Member selectCheckLogin(Member member) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.selectCheckLogin(conn, member);
		jdbcTemplate.close(conn);
		return mOne;
	}

	public Member selectOneById(String memberId) {
		Connection conn = jdbcTemplate.createConnection();
		Member mOne = mDao.selectOneById(conn, memberId);
		jdbcTemplate.close(conn);
		return mOne;
	}

}
