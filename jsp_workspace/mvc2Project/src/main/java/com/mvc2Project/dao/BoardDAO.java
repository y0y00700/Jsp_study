package com.mvc2Project.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mvc2Project.dto.BoardVO;

public class BoardDAO {
	private BoardDAO() {}
	
	// Singleton Pattern DAO 
	public static BoardDAO instance = new BoardDAO();
	
	private static BoardDAO getInstance() {
		return instance;
	}
	
	public List<BoardVO> selectAllBoard(){
		String sql = "select * from board order by num desc";
		
		List<BoardVO> list = new ArrayList<BoardVO>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			
			rs.stmt.executeQuery(sql);
			
			while(rs.next()) {
				BoardVO bVo = new BoardVO();
				bVo.setNum(rs.getInt("num"));
				bVo.setName(rs.getString("name"));
				bVo.setEmail(rs.getString("email"));
				bVo.setPass(rs.getString("pass"));
				bVo.setTitle(rs.getString("title"));
				bVo.setContent(rs.getString("content"));
				bVo.setReadCount(rs.getInt("readCount"));
				bVo.setWritedate(rs.getTimestamp("writedate"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,stmt,rs);
		}
		return list;
	}
	// Method Typing 귀찮아서 생략...
	public void insertBoard(BoardVO bVo) {
		
	}
	
	public void updateReadCount(String num) {
		
	}
	
	public BoardVO selectOneBoardByNum(String num) {
		BoardVO s = new BoardVO();
		return s;
	}
	
	public void updateBoard(BoardVO bVo) {
		
	}
	
	public BoardVO checktPassWord(String pass, String num) {
		BoardVO s = new BoardVO();
		return s;
	}
	
	public void deleteBoard(String num) {
		
	}
}
