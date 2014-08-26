package com.ericsson.altamira.acaa.tm;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

public class TransactionManager {
	
	private static HashMap<String, ConnectionDefenition> CONNECTION_POOL = null;
	
	
	static {
		CONNECTION_POOL = new HashMap<String, ConnectionDefenition>();
	}
	
	public static String createTransaction(String connCode, String connConf) {		
		
		ConnectionDefenition connDef = CONNECTION_POOL.get(connCode);
		if(connDef == null) {
			Connection conn;
			try {
				conn = DBConnectionHelper.createNewCWConnection(connConf);
				conn.setAutoCommit(false);
				connDef = new ConnectionDefenition(connCode, conn);			
				CONNECTION_POOL.put(connCode, connDef);
			} catch (Exception e) {
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		return null;
	}
	
	
	public static String commitTransaction(String connCode) {
		try {
			Connection conn = CONNECTION_POOL.get(connCode).getConnection();		
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			return e.getMessage();
		}		
		return null;
	}
	
	public static String rollbackTransaction(String connCode) {
		try {
			Connection conn = CONNECTION_POOL.get(connCode).getConnection();		
			conn.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
			return e.getMessage();
		}		
		return null;
	}
	
	public static String executeStatment(String connCode, String statment, String parameters) {
		try {
			Connection conn = CONNECTION_POOL.get(connCode).getConnection();
			
			CallableStatement sta = conn.prepareCall(statment);
			
//			if(parameters != null) {
//				String[] parArray = parameters.split(";");			
//				for (int i = 0; i < parArray.length; i++)
//					sta.setString(i, parArray[i]);				
//			}			
//			
			ResultSet rs = sta.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return e.getMessage();
		}
		return null;
	}
	
}

