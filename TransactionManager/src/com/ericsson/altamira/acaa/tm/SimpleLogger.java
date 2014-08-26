package com.ericsson.altamira.acaa.tm;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

public class SimpleLogger {
		
	private static Logger logger = Logger.getLogger("DBTM");  
    private static FileHandler fh;

    
    static {
        try {               	 
            fh = new FileHandler("C:/Temp/CWMyLogFile.log");  
            logger.addHandler(fh);  
            //logger.setLevel(Level.ALL);  
            SimpleFormatter formatter = new SimpleFormatter();  
            fh.setFormatter(formatter);              
        } catch (SecurityException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }              	
    }
    
	public static void writeInfo(String line) {
        logger.info(line);
	}
	
	public static void writeWarning(String line) {
        logger.warning(line);
	}

	public static void writeError(String line) {
        logger.severe(line);
	}

}
