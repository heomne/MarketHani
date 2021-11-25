package com.kurly.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ReviewDAO {

	Connection con = null;            // DB 연결하는 객체 
	PreparedStatement pstmt = null;   // DB에 SQL문을 전송하는 객체
	ResultSet rs = null;       		  // SQL문을 실행 후 결과 값을 가지고 있는 객체 
	String sql = null;    			  // SQL문을 저장할 객체
	
	// ReviewDAO 객체를 싱글톤 방식으로 만들어 보자.
		// 1단계 : 싱글톤 방식으로 객체를 만들기 위해서는 우선적으로
		//        기본 생성자의 접근 제어자를 private 으로 선언해야 함.
		// 2단계 : ReviewDAO 객체를 정적 멤버로 선언해야 함. - static으로 선언해야 함.
		private static ReviewDAO instance = null;
		
		
		private ReviewDAO() {   }  // 기본생성자.
			
		// 3단계 : 기본 생성자 대신에 싱글턴 객체를 return 해 주는 getInstance() 라는
		//        메서드를 만들어서 여기에 접근하게 해야 함.
		public static ReviewDAO getInstance() {
			
			if(instance == null) {
				instance = new ReviewDAO();
			}
			return instance;
			
		}  // getInstance() 메서드 end
		
		
		// DB를 연동하는 작업을 진행하는 메서드
		public void openConn() {
			
			try {
				// 1단계 : JNDI 서버 객체 생성
				Context ctx = new InitialContext();
				
				// 2단계 : lookup() 메서드를 이용하여 매칭되는 커넥션을 찾는다.
				DataSource ds =
						(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
				
				// 3단계 : DataSource 객체를 이용하여 커넥션 객체를 하나 가져온다.
				con = ds.getConnection();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
		}  // openConn() 메서드 end
		
		
		// DB에 연결된 객체를 종료하는 메서드.
		public void closeConn(ResultSet rs, 
				PreparedStatement pstmt, Connection con) {
			
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt != null) {
					pstmt.close();
				}
				if(con != null) {
					con.close();
				}
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
		}  // closeConn() 메서드 end
		
		//kurly_review 테이블에서 전체 리스트를 조회하는 메서드
		public List<ReviewDTO> getReviewList() {
			List<ReviewDTO> list = new ArrayList<ReviewDTO>();
			
			try {

				openConn();
				
				sql = "select * from kurly_review order by r_num desc";
				
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					ReviewDTO dto = new ReviewDTO();
					
					dto.setR_num(rs.getInt("r_num"));
					dto.setUser_id(rs.getString("user_id"));
					dto.setP_num(rs.getInt("p_num"));
					dto.setR_title(rs.getString("r_title"));
					dto.setR_content(rs.getString("r_content"));
					dto.setR_image(rs.getString("r_image"));
					dto.setR_date(rs.getString("r_date").substring(0,10));  /*뒤에 시분초 자르는 방법*/
					dto.setR_hit(rs.getInt("r_hit"));
					
					list.add(dto);
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				closeConn(rs, pstmt, con);
			}
			
			
			return list;
			
		} //getReviewList() 메서드 end
		
		
	
}
