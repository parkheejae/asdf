package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import config.OracleInfo;
import exception.DuplicateIdException;
import exception.PasswordErrorException;
import exception.RecordNotFoundException;
import vo.UserRec;

public class Database {
	static {
		 try {
			Class.forName(OracleInfo.DRIVER_NAME);
			System.out.println("드라이버 로딩 성공...");
		} catch (ClassNotFoundException e) {
				e.printStackTrace();
		}
		 
	}
	
	static private Database db = new Database();
	
	 public static Database getInstance() {
		 return db;
	 }
	
	private Connection getConnect() throws SQLException {

		Connection conn = DriverManager.getConnection(OracleInfo.URL, OracleInfo.USER, OracleInfo.PASS);
		System.out.println("db connection....");
		return conn;
	}

	private void closeAll(PreparedStatement ps, Connection conn) throws SQLException {
		if (ps != null)
			ps.close();
		if (conn != null)
			conn.close();
	}

	private void closeAll(ResultSet rs, PreparedStatement ps, Connection conn) throws SQLException {
		if (rs != null)
			rs.close();
		closeAll(ps, conn);
	}
	
	
	private boolean isExist(Connection conn, String id) throws SQLException {
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			String query = "select id from member where id=?";
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			return rs.next();
		} finally {
			rs.close();
		}
	}
	
	public UserRec logIn(String id, String password) throws SQLException, RecordNotFoundException, PasswordErrorException {
		UserRec user = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = getConnect();
			if (isExist(conn, id)) {
				String query = "select * from member where id=? and password=?";
				ps = conn.prepareStatement(query);
				ps.setString(1, id);
				ps.setString(2, password);
				rs = ps.executeQuery();
				if (rs.next()) {
					user = new UserRec(rs.getString("id"), rs.getString("password"), rs.getString("name"),
							rs.getInt("userlevel"));
							} else
								throw new PasswordErrorException("password가 잘못되었습니다.");
			} else
				throw new RecordNotFoundException(id + "로 등록된 고객이 없습니다.");
		} finally {
			closeAll(rs, ps, conn);
		}

		return user;

	}
	
	public int signIn(UserRec user) throws SQLException, DuplicateIdException, PasswordErrorException {
		
		Connection conn = null;
		PreparedStatement ps = null;
		int signin = 0;
		try {
			conn = getConnect();
			if (isExist(conn, user.getId())) {
				String query = "INSERT INTO member values(?,?,?,?)";
				ps = conn.prepareStatement(query);
				ps.setString(1, user.getId());
				ps.setString(1, user.getPassword());
				ps.setString(3, user.getName());
				ps.setInt(4, 1);
				signin = ps.executeUpdate();
				
			} else
				throw new DuplicateIdException("id가 중복됩니다.");
		} finally {
			closeAll(ps, conn);
		}
		return signin;
	}
	
	
	
}//database

