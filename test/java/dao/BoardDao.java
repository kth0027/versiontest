package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Board;

public class BoardDao {

	private Connection con;
	private ResultSet rs;
	private PreparedStatement ps;

	// 2. 생성자
	public BoardDao() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/versiontest?serverTimezone=UTC", "root",
					"1234");

		} catch (Exception e) {
			System.out.println("[연동 실패]");
		}
	}

	public static BoardDao boarddao = new BoardDao(); // 3. Dao 객체 생성

	public static BoardDao getboarddao() {
		return boarddao;
	} // 4. Dao 객체 반환

	// 게시물 작성
	public boolean boardwrite(Board board) {

		String sql = "insert into board( productnumber ,productcode , productname , productmaterial , productprint, productcoting, producthabji, productjubhab , productwarp, productworkday,  productsuccessday ) values(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getProductnumber());
			ps.setString(2, board.getProductcode());
			ps.setString(3, board.getProductname());
			ps.setString(4, board.getProductmaterial());
			ps.setString(5, board.getProductprint());
			ps.setString(6, board.getProductcoting());
			ps.setString(7, board.getProducthabji());
			ps.setString(8, board.getProductjubhab());
			ps.setString(9, board.getProductwarp());
			ps.setString(10, board.getProductworkday());
			ps.setString(11, board.getProductsuccessday());
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;

	}


	// 모든 게시물 출력
	public ArrayList<Board> boardlist() {

		ArrayList<Board> boards = new ArrayList<Board>();
		String sql ="select * from board";

		try {
//				String sql = "select * from reply where pnum=" + pnum;
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {

				Board board = new Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
						rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
				boards.add(board);
			}
			return boards;
		} catch (Exception e) {System.out.println("제품 리스트 전체 조회 오류 "+e);}
		return null;
	}
	
//	// 게시물번호의 해당 게시물 가져오기
//	public Board getboard(int pnum) {
//		String sql = "select * from board where pnum=?";
//		try {
//			ps = con.prepareStatement(sql);
//			ps.setInt(1, pnum);
//			rs = ps.executeQuery();
//			if (rs.next()) {
//				Board board = new Board(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
//						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),
//						rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
//				return board;
//			}
//		} catch (Exception e) {
//		}
//		return null;
//	}

}
