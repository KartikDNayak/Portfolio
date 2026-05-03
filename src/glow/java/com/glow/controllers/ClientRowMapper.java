package com.glow.controllers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ClientRowMapper implements RowMapper<Client> {

	@Override
	public Client mapRow(ResultSet rs, int rowNum) throws SQLException {
		Client client = new Client();
		client.setName(rs.getString("name"));
		client.setEmail(rs.getString("email"));
		client.setMessage(rs.getString("message"));
		return client;
	}

}
