package com.glow.controllers;

import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;

@Component
public class DbConfiguration {
	
	public DriverManagerDataSource source() {
		DriverManagerDataSource source = new DriverManagerDataSource();
		source.setDriverClassName("com.mysql.cj.jdbc.Driver");
		source.setUrl("jdbc:mysql://localhost:3306/portfolio");
		source.setPassword("Kar@@tik123");
		source.setUsername("root");
		return source;
	}
	
	@Bean
	public JdbcTemplate template() {
		JdbcTemplate template = new JdbcTemplate(source());
		return template;
	}

}
