package com.ericsson.altamira.acaa.tm;

import java.sql.Connection;
import java.sql.Driver;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.springframework.jdbc.datasource.SimpleDriverDataSource;

public class DBConnectionHelper {
	
	private static final String ConfigDbName = "ConceptWaveConfig";
	
	public static Connection createNewCWConnection(String dbCon) throws Exception {
		
		DataSource datasource = null;
		Context ctx = new InitialContext();		

		if(dbCon != null) {
			
			String conPar[] = dbCon.split(";");
			String DBUrl = conPar[0];
			String DBUser = conPar[1];
			String DBPassword = conPar[2];
			
			SimpleLogger.writeWarning("Connection to DB using naming failed. Using manual mode.");
			Driver driver = (Driver) Class.forName(
					"oracle.jdbc.driver.OracleDriver").newInstance();
			datasource = new SimpleDriverDataSource(driver, DBUrl, DBUser, DBPassword);			
		}
		else {
		
			Object obj = ctx.getEnvironment().get("java.naming.factory.initial");
	
			if (obj == null) {
				obj = ctx.getEnvironment().get("java.naming.factory.url.pkgs");
			}
	
			if (obj != null) {
				
				String strObj = obj.toString();
				datasource = null;
				if (strObj.endsWith("NamingContextFactory")) {
					datasource = ((DataSource) ctx.lookup(new StringBuilder()
							.append("java:").append(ConfigDbName)
							.toString()));
				} else if (strObj.endsWith("WLInitialContextFactory")) {
					datasource = ((DataSource) ctx.lookup(ConfigDbName));
				} else if (strObj.endsWith("WsnInitialContextFactory")) {
					datasource = ((DataSource) ctx.lookup(ConfigDbName));
				} else if (strObj.indexOf("jboss") != -1) {
					datasource = ((DataSource) ctx.lookup(new StringBuilder()
							.append("java:/").append(ConfigDbName)
							.toString()));
				} else if (strObj.endsWith("javaURLContextFactory")) {
					datasource = ((DataSource) ctx.lookup(new StringBuilder()
							.append("java:comp/env/").append(ConfigDbName)
							.toString()));
				}
	
			}
		}
		return datasource.getConnection();
		
		
	}

}
