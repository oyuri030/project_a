package ohyuriDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import address.addrBean;

public class reviewDao {
	
	String id = "root";
	String pass="111111";

	String url="jdbc:mysql://localhost:3306/jspdb?characterEncoding=UTF-8";
		
	Connection conn=null;
	PreparedStatement pstmt=null; 
	ResultSet rs=null; 
	
	
	
	
	public void connection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn= DriverManager.getConnection(url, id, pass);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
				
	}
		

	public void disconnection() {
		if(conn != null) {
			try {
				conn.close();
				System.out.println("conn");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(pstmt != null) {
			try {
				pstmt.close();
				System.out.println("ps");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(rs != null) {
			try {
				rs.close();
				System.out.println("rs");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	
	public void insertAddr(reviewDo aDo) {
		connection();

		String sql = "insert into reviewpage values(null,?,?,?,?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, aDo.getName());
			pstmt.setString(2, aDo.getGender());
			pstmt.setString(3, aDo.getAge());
			pstmt.setString(4, aDo.getMbti());
			pstmt.setString(5, aDo.getMovie());
			pstmt.setString(6, aDo.getTitle());
			pstmt.setFloat(7, aDo.getScore());
			pstmt.setString(8, aDo.getReview());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disconnection(); 
	}
	
	
	
	public ArrayList<reviewDo> getAllAddr() {
		connection();
		ArrayList<reviewDo> aList = new ArrayList<reviewDo>();
		
		String sql = "select * from reviewpage";
		
		try {
			
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while( rs.next()) {
				reviewDo ado = new reviewDo();
				
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setGender(rs.getString(3));
				ado.setAge(rs.getString(4));
				ado.setMbti(rs.getString(5));
				ado.setMovie(rs.getString(6));
				ado.setTitle(rs.getString(7));
				ado.setScore(rs.getFloat(8));
				ado.setReview(rs.getString(9));
			
				
				aList.add(ado);
			}
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}	
		disconnection();
		return aList;
	}
	
	public reviewDo getAddressOne(int num) {
		connection();
		reviewDo aDo = new reviewDo();
		
		String sql = "select * from reviewpage where num=?";
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				aDo.setNum(rs.getInt(1));
				aDo.setName(rs.getString(2));
				aDo.setGender(rs.getString(3));
				aDo.setAge(rs.getString(4));
				aDo.setMbti(rs.getString(5));
				aDo.setMovie(rs.getString(6));
				aDo.setTitle(rs.getString(7));
				aDo.setScore(rs.getFloat(8));
				aDo.setReview(rs.getString(9));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disconnection();
		return aDo;
		
	}
	
	public void modifyAddr(reviewDo aDo) {
		connection();
		String sql = "update reviewpage set name=?,gender=?, age=?,"
				+ "mbti=?, movie=?, title=?, score=?, review=? where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, aDo.getName());
			pstmt.setString(2, aDo.getGender());
			pstmt.setString(3, aDo.getAge());
			pstmt.setString(4, aDo.getMbti());
			pstmt.setString(5, aDo.getMovie());
			pstmt.setString(6, aDo.getTitle());
			pstmt.setFloat(7, aDo.getScore());
			pstmt.setString(8, aDo.getReview());
			pstmt.setInt(9, aDo.getNum());
			
			pstmt.executeUpdate();
			

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		disconnection();
	}
	
	
	public void deleteAddr(int num) {
		connection();
		String sql = "delete from reviewpage where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disconnection();
	}
	
	
	public ArrayList<reviewDo> aReviewsort() {
		connection();
		ArrayList<reviewDo> sList = new ArrayList<reviewDo>();
		
		
			
		String sqls = "SELECT * FROM `jspdb`.`reviewpage` ORDER BY `score` DESC LIMIT 1000";
		
		try {
			
			
			pstmt = conn.prepareStatement(sqls);
			rs = pstmt.executeQuery();
			
			while( rs.next()) {
				reviewDo ado = new reviewDo();
				
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setGender(rs.getString(3));
				ado.setAge(rs.getString(4));
				ado.setMbti(rs.getString(5));
				ado.setMovie(rs.getString(6));
				ado.setTitle(rs.getString(7));
				ado.setScore(rs.getFloat(8));
				ado.setReview(rs.getString(9));
			
				
				sList.add(ado);
			}
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}	
		disconnection();
		return sList;
		}
	
	public ArrayList<reviewDo> dReviewsort() {
		connection();
		ArrayList<reviewDo> sList = new ArrayList<reviewDo>();
		
		
			
		String sqls = "SELECT * FROM `jspdb`.`reviewpage` ORDER BY `score` ASC LIMIT 1000";
		
		try {
			
			
			pstmt = conn.prepareStatement(sqls);
			rs = pstmt.executeQuery();
			
			while( rs.next()) {
				reviewDo ado = new reviewDo();
				
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setGender(rs.getString(3));
				ado.setAge(rs.getString(4));
				ado.setMbti(rs.getString(5));
				ado.setMovie(rs.getString(6));
				ado.setTitle(rs.getString(7));
				ado.setScore(rs.getFloat(8));
				ado.setReview(rs.getString(9));
			
				
				sList.add(ado);
			}
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}	
		disconnection();
		return sList;
		}
	
	
	
	
	public ArrayList<reviewDo> mbtiSeach() {
		connection();
		ArrayList<reviewDo> aList = new ArrayList<reviewDo>();
		reviewDo adok = new reviewDo();
		
		String key = adok.getSch();
		
		String sql = "SELECT * FROM reviewpage WHERE mbti LIKE '"+key+"';";
		
		try {
			
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while( rs.next()) {
				reviewDo ado = new reviewDo();
				
				ado.setNum(rs.getInt(1));
				ado.setName(rs.getString(2));
				ado.setGender(rs.getString(3));
				ado.setAge(rs.getString(4));
				ado.setMbti(rs.getString(5));
				ado.setMovie(rs.getString(6));
				ado.setTitle(rs.getString(7));
				ado.setScore(rs.getFloat(8));
				ado.setReview(rs.getString(9));
			
				
				aList.add(ado);
			}
			
			
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			
		}	
		disconnection();
		return aList;
	}
}


	

