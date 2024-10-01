package com.exercise.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.catalina.Context;

import com.exercise.voExample.MemberVO;

public class DaoEx {
	//Singleton
	private DaoEx() {}
	
	private static DaoEx instance = new DaoEx();
	
	public static DaoEx getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myorcle");
		conn = ds.getConnection();
		return conn;
	}
	
	// getMember
	public DaoEx getMember(String userid) {
		MemberVO mVo = null;
		String sql = "select * from member where userid = ? ";
		Connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setName(rs.getString("name"));
				mVo.setName(rs.getString("id;"));
				mVo.setName(rs.getString("pwd"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
				if(conn != null) conn.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}
}
