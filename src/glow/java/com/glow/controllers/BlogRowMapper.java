package com.glow.controllers;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class BlogRowMapper implements RowMapper<Blog> {

    @Override
    public Blog mapRow(ResultSet rs, int rowNum) throws SQLException {

        Blog blog = new Blog();
        blog.setId(rs.getInt("id"));
        blog.setTitle(rs.getString("title"));
        blog.setDescription(rs.getString("description"));
        blog.setContent(rs.getString("content"));
        blog.setImage(rs.getString("image"));
        blog.setCategory(rs.getString("category"));
        blog.setCreated_date(rs.getString("created_date"));

        return blog;
    }
}