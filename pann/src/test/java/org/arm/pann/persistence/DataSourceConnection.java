package org.arm.pann.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class DataSourceConnection {

	@Setter(onMethod_ = { @Autowired })
	private DataSource dataSource;

	@Test
	public void dataSourceTest() {

		try (Connection conn = dataSource.getConnection()) {
			System.out.println("========================");
			System.out.println("DataSource빈 등록 성공 = "+conn);
			System.out.println("========================");
		} catch (Exception e) {
			fail(e.getMessage());
		}

	}

}
