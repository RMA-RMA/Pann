package org.arm.pann.persistence;

import org.arm.pann.mapper.TimeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MapperConnection {

	
		@Autowired
		private TimeMapper Mapper;
		
		@Test
		public void testGetTime() {
			
			System.out.println("============================");
			System.out.println("testGetTime => "+Mapper.getTime());
			System.out.println("============================");
			
		}
		
		@Test
		public void testGetTime2() {
			System.out.println("============================");
			System.out.println("testGetTime2 => " +Mapper.getTime2());
			System.out.println("============================");
		}

	}

