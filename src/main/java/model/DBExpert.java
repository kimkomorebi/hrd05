package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBExpert {
	private final String url = "jdbc:oracle:thin:@//localhost:1521/xe" ;
	private final String driver = "oracle.jdbc.OracleDriver" ;
	private Connection con = null; 
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	public boolean putMovie(EntryMovie em) {
		String insert = "insert into movies_info values("
				+ "?, ?, to_date(?, 'YYYY-MM-DD'), ?, ?)";
		boolean result = false;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,"hr","hr");
			pstmt = con.prepareStatement(insert);
			pstmt.setString(1, em.getId());
			pstmt.setString(2, em.getTitle());
			pstmt.setString(3, em.getOpen());
			pstmt.setInt(4, Integer.parseInt(em.getStart()));
			pstmt.setInt(5, Integer.parseInt(em.getEnd()));
			pstmt.executeUpdate();
			con.commit();
			result = true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close(); con.close();
			}catch(Exception e) {}
		}
		return result;
	}
	
	public boolean deleteBooking(String id, String no) {
		String delete = "delete from booking_info "+
				"where id = ? and no = ?";
		boolean result = false; //삭제 성공 유무를 위한 변수
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,"hr","hr");
			pstmt = con.prepareStatement(delete);
			pstmt.setString(1, id);
			pstmt.setString(2, no);
			pstmt.executeUpdate();
			con.commit();
			result = true;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();con.close();
			}catch(Exception e) {}
		}
		return result;
	}
	
	public ArrayList<Booking> getBookingList(){
		String select = "select w.name, w.phone, m.title, m.start_hour, m.end_hour, b.tickets, to_char(b.r_date, 'YYYYMMDD')"
				+ ", b.id, b.no"
				+ " from watcher_info w, booking_info b, movies_info m"
				+ " where w.no = b.no"
				+ " and b.id = m.id";
		ArrayList<Booking> list = new ArrayList<Booking>();
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url,"hr","hr");
			pstmt = con.prepareStatement(select);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Booking b = new Booking();
				b.setName(rs.getString(1));
				b.setPhone(rs.getString(2));
				b.setTitle(rs.getString(3));
				b.setStart(rs.getInt(4));
				b.setStrat_hour(String.format("%04d", b.getStart()));
				b.setEnd(rs.getInt(5));
				b.setEnd_hour(String.format("%04d", b.getEnd()));
				b.setNum(rs.getInt(6));
				b.setDate(rs.getString(7));
				b.setId(rs.getString(8));//영화 번호
				b.setNo(rs.getString(9));//고객 번호
				list.add(b);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close(); pstmt.close(); con.close();
			}catch(Exception e) {}
		}
		return list;
	}
}
