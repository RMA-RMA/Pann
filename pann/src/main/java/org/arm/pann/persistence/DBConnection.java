package org.arm.pann.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class DBConnection {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		} catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	@Test
	public void ConnectionTest() {
		
		try(Connection conn = DriverManager.getConnection(
				
				"jdbc:oracle:thin:@3.39.9.144:1521:XE",
				"book_ex",
				"book_ex"
				
				)){
			System.out.println("=================================");
			System.out.println("jdbc 드라이버 연결 성공 ");
			System.out.println("con = > "+ conn);
			System.out.println("Log4j2 성공  ");
			log.info(conn);
	
		}catch(SQLException sqle) {
			System.out.println("DB접속 실패 ");
			System.out.println(sqle.toString());
		}catch(Exception ex) {
			System.out.println("Unkonwn 에러 ");
			ex.printStackTrace();
		}
	}
	
}
