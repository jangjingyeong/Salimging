package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.model.vo.Member;

public class MemberDAO {

	public int insertMember(Connection conn, Member member) {
		String query = "INSERT INTO MEMBER_TBL VALUES(?,?,?,?,?,?,?,?,?,DEFAULT,DEFAULT,DEFAULT)";
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberPw2());
			pstmt.setString(4, member.getMemberName());
			pstmt.setString(5, member.getMemberNickname());
			pstmt.setString(6, member.getMemberBirthday());
			pstmt.setString(7, member.getMemberPhone());
			pstmt.setString(8, member.getMemberEmail());
			pstmt.setString(9, member.getMemberAddress());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int updateMember(Connection conn, Member member) {
		String query = "UPDATE MEMBER_TBL SET MEMBER_PW = ?, MEMBER_PW2 =?, "
				+ "MEMBER_NICKNAME =?, MEMBER_PHONE =?, MEMBER_EMAIL=?, "
				+ "MEMBER_ADDRESS=?,UPDATE_DATE=DEFAULT WHERE MEMBER_ID = ?";
		PreparedStatement pstmt = null;
		int result = 0;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, member.getMemberPw());
			pstmt.setString(2, member.getMemberPw2());
			pstmt.setString(3, member.getMemberNickname());
			pstmt.setString(4, member.getMemberPhone());
			pstmt.setString(5, member.getMemberEmail());
			pstmt.setString(6, member.getMemberAddress());
			pstmt.setString(7, member.getMemberId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result;
	}

	public Member selectCheckLogin(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_ID = ? AND MEMBER_PW = ?";
		Member mOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			rset = pstmt.executeQuery(); // 누락 주의, 결과값 받기 주의! 
			// 후처리 필요 
			if(rset.next()) {
				mOne = rsetToMember(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return mOne;
	}

	public Member selectOneById(Connection conn, String memberId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_ID =?";
		Member mOne = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				mOne = rsetToMember(rset);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rset.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return mOne;
	}

	private Member rsetToMember(ResultSet rset) throws SQLException {
		Member member = new Member();
		member.setMemberId(rset.getString("MEMBER_ID"));
		member.setMemberPw(rset.getString("MEMBER_PW"));
		member.setMemberPw2(rset.getString("MEMBER_PW2"));
		member.setMemberName(rset.getString("MEMBER_NAME"));
		member.setMemberNickname(rset.getString("MEMBER_NICKNAME"));
		member.setMemberBirthday(rset.getString("MEMBER_BIRTHDAY"));
		member.setMemberPhone(rset.getString("MEMBER_PHONE"));
		member.setMemberEmail(rset.getString("MEMBER_EMAIL"));
		member.setMemberAddress(rset.getString("MEMBER_ADDRESS"));
		member.setMemberDate(rset.getTimestamp("MEMBER_DATE"));
		member.setUpdateDate(rset.getTimestamp("UPDATE_DATE"));
		member.setMemberYn(rset.getString("MEMBER_YN"));
		return member;
	}

}
