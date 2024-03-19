package servletdemo.part03;

import java.sql.Connection;
import java.util.List;

public class MemService {
	private MemDAO dao;

	public MemService() {
		dao = MemDAO.getInstance();

	}

	public List<MemDTO> listProcess() {
		List<MemDTO> aList = null;
		Connection conn = null;

		try {
			conn = JdbcTemplate.getConnection();
			conn.setAutoCommit(false);
			aList = dao.listMethod(conn);
			JdbcTemplate.commit(conn);
			conn.commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			JdbcTemplate.rollback(conn);
		}finally {
			JdbcTemplate.close(conn);
		}

		return aList;
	}// end class
	
	public int insertProcess(MemDTO dto) {
		int chk=0;
		Connection conn=null;
		try {
			conn=JdbcTemplate.getConnection();
			conn.setAutoCommit(false);
			chk=dao.insertMethod(conn, dto);
			JdbcTemplate.commit(conn);
		}catch(Exception e) {
			System.out.println(e.getMessage());
			JdbcTemplate.rollback(conn);
		}finally {
			JdbcTemplate.close(conn);
		}
		
		return chk;
	} //end insertProcess()
	
} //end class
