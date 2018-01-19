package me.sswy.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SpiderCommon {

	public static SqlSessionFactory getSqlSessionFactory(String resource) throws IOException{
		InputStream inputStream = Resources.getResourceAsStream(resource);
		
		return new SqlSessionFactoryBuilder().build(inputStream);
	}
}
