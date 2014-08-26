package com.ericsson.altamira.acaa.tm;

import java.sql.Connection;

public class ConnectionDefenition {
	private String code = null;
	private Connection connection = null;
	
	public ConnectionDefenition(String code, Connection connection) {
		this.code=code;
		this.connection=connection;
	}
	
	public String getCode() {
		return code;
	}
	
	public Connection getConnection() {
		return connection;
	}

}
