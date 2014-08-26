package com.ericsson.altamira.or;

import java.util.StringTokenizer;

import org.apache.log4j.Logger;

public class Tester {
	
	private static Logger log = Logger.getLogger(Tester.class);
	
    private static final String PO_GE_RECONFSHM	=	"PO_GE_RECONFSHM";
    private static final String JOLT_MACHINE	=	"10.95.177.4";		//"10.95.180.120";	//"10.95.180.151";
    private static final String JOLT_PORT		=	"12500";			//"15100";
    private static final String JOLT_USER		=	"ACTIVA";
    private static final String JOLT_ROLE		=	"";
    private static final String JOLT_PASS_USER	=	"222136154121254081048231248107006065150130184247156123085252187067041174073126136037096151081083";
    private static final String JOLT_PASS_APLIC	=	"222136154121254081048231248107006065150130184247156123085252187067041174073126136037096151081083";
    private static final String JOLT_TIMEOUT	=	"30";

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		log.info("Starting tester...");
		
		String locale = "es-ES";
		Boolean testMode = Boolean.FALSE;

		try {
			ReReadingServiceOpge.addMemoryZoneToPendingQueue("ID_0001", "376");
//			String result = ReReadingServiceOpge.invokeReReadingByParam("4,5,6", PO_GE_RECONFSHM, JOLT_MACHINE, JOLT_PORT, JOLT_USER, JOLT_ROLE, JOLT_PASS_USER, JOLT_PASS_APLIC, JOLT_TIMEOUT, locale, testMode);
			String result = ReReadingServiceOpge.invokeTuxedo("ID_0001", PO_GE_RECONFSHM, JOLT_MACHINE, JOLT_PORT, JOLT_USER, JOLT_ROLE, JOLT_PASS_USER, JOLT_PASS_APLIC, JOLT_TIMEOUT, locale, testMode);
			
			ReReadingServiceOpge.clearPendingQueue("ID_0001");
			
			boolean isSuccess = false; 
					
			StringTokenizer st = new StringTokenizer(result, ",");
			if("OK".equalsIgnoreCase(st.nextToken())) {
				isSuccess = true;
			}
			
			if(isSuccess) {
				log.debug("The reReading execution was OK");
			}
			else {
				log.error("An error was thrown while executing reReading");
			}
		} catch (Exception e) {
			log.error(e);
		}

		log.info("Tester finalized");
	}

}
