package com.ericsson.altamira.or;

import java.text.MessageFormat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;


/**
 * Class that invokes the Re-Reading Service for OCS-MS OPGE environment.
 * 
 * @author Javier López Delgado
 *
 */
public class ReReadingServiceOpge {

    /** Logger class for write messages */
    private static Logger log					=	Logger.getLogger(ReReadingServiceOpge.class);
    
    /** Class name used for write logs */
    final private static String CLASS_NAME		=	ReReadingServiceOpge.class.getSimpleName();
    
    /** Result for a correct operation flow */
    final private static String RESULT_OK		=	"OK";
    
    /** Result for an error operation flow */
    final private static String RESULT_KO		=	"KO";
	
	/** Hash that contains a queue of memory zones for each SessionId. */
	private static HashMap<String, Set<String>> memoryZoneQueues = new HashMap<String, Set<String>>();
	
	/** Temporary list of processed memory zones to be cleaned from the SessionId queue. */
	private static HashMap<String, Set<String>> processedMemoryZoneQueues = new HashMap<String, Set<String>>();
	
	
	/**
	 * Add a memory zone in the pending queue for a sessionId.
	 * @param sessionId
	 * @param memoryZone
	 * @throws Exception
	 */
	public static void addMemoryZoneToPendingQueue(String sessionId, String memoryZone) throws Exception {
		if(log.isDebugEnabled()) {
			log.debug(MessageFormat.format("Adding memory zone \"{0}\" to the pending queue with id \"{1}\" for the Tuxedo invoking", memoryZone, sessionId));
		}
		
		// Ckeck if already exist a list of memory zones for the sessionId:
		if(memoryZoneQueues.containsKey(sessionId)) {
			Set<String> existingMemoryZoneQueue = memoryZoneQueues.get(sessionId);
			existingMemoryZoneQueue.add(memoryZone);
		}
		else {
			Set<String> newMemoryZoneQueue = new HashSet<String>();
			newMemoryZoneQueue.add(memoryZone);
			memoryZoneQueues.put(sessionId, newMemoryZoneQueue);
		}
	}
	
	/**
	 * Clear the queue of a sessionId.
	 * @param sessionId
	 * @throws Exception
	 */
	public static void clearPendingQueue(String sessionId) throws Exception {
		if(log.isDebugEnabled()) {
			log.debug(MessageFormat.format("Cleaning memory zones queue with id \"{0}\"", sessionId));
		}
		
		// Ckeck if already exist a list of memory zones for the sessionId:
		if(memoryZoneQueues.containsKey(sessionId)) {
			Set<String> existingMemoryZoneQueue = memoryZoneQueues.get(sessionId);
			existingMemoryZoneQueue.clear();
		}
		else {
			Set<String> newMemoryZoneQueue = new HashSet<String>();
			memoryZoneQueues.put(sessionId, newMemoryZoneQueue);
		}
		
		// The same for the processed queue:
		if(processedMemoryZoneQueues.containsKey(sessionId)) {
			Set<String> processedMemoryZoneQueue = processedMemoryZoneQueues.get(sessionId);
			processedMemoryZoneQueue.clear();
		}
		else {
			Set<String> newProcessedMemoryZoneQueue = new HashSet<String>();
			processedMemoryZoneQueues.put(sessionId, newProcessedMemoryZoneQueue);
		}
	}
	
	/**
	 * Invokes the Tuxedo service for propagate the new configuration applied in form tables to execution tables in OCS-RE and SDP environments.
	 * Returns a formatted string, following the pattern '[OK/KO],[message]'.
	 * @param sessionId
	 * @param tuxedoToBeInvoked
	 * @param host
	 * @param port
	 * @param user
	 * @param role
	 * @param user_pass
	 * @param app_pass
	 * @param timeout
	 * @param locale
	 * @param testMode
	 * @return
	 * @throws Exception
	 */
	public static String invokeTuxedo(String sessionId, String tuxedoToBeInvoked, String host, String port, String user, String role, String user_pass, String app_pass, String timeout, String locale, Boolean testMode) throws Exception {
		String msg;
		String  result;
		
		msg = "The operation worked correctly";
		result = RESULT_OK + "," + msg;
		
		if(testMode != null && testMode.booleanValue()) {
			if(log.isDebugEnabled()) {
				log.debug("Executing the invokation to Tuxedo in TEST mode");
			}
			
			return result;
		}
		

		if(log.isDebugEnabled()) {
			log.debug("Executing the invokation to Tuxedo. Existing memory zone queues:");
			
			Set<String> keys = memoryZoneQueues.keySet();
			Iterator<String> it = keys.iterator();
			while(it.hasNext()) {
				String key = it.next();
				log.debug(key + " -> " + memoryZoneQueues.get(key));
			}
		}
		
		// Check if already exist a list of memory zones for the sessionId:
		if(!memoryZoneQueues.containsKey(sessionId)) {
			msg = "Error: there isn't any memory zone queue configured for the sessionId " + sessionId;
			result = RESULT_KO + "," + msg;
			return result;
		}
		
		Set<String> pendingQueue = memoryZoneQueues.get(sessionId);
		if (pendingQueue.size() > 0) {		    
		    log.info("Invoking the Tuxedo for rereading the memory zones.");
		}

        for (String msgNum : pendingQueue) {
            int       res;
            
            if (StringUtils.isNotBlank(msgNum)) {
            
                try {
                    res = ConexionJOLT.llamaServicio(
                        tuxedoToBeInvoked,
                        new String[] { "num_mensaje" },
                        new String[] { msgNum },
                        host,
                        port,
                        user,
                        role,
                        user_pass,
                        app_pass,
                        timeout
                    );
                    // res =  0 : operacion realizada con exito
                    // res =  1 : error por vencimiento del temporizador (timeout)
                    // res = -1 : error de base de datos
                    // res = -2 : error del commit
                    // res = -3 : error de mensaje inexistente
                    // res = -4 : error de libreria
                    // res = -5 : error de la biblioteca identificador
                    // res = -6 : error
                    
                    if (res != 0) {
                        msg = "Error updating the memory zone [" + msgNum + "]. Result: " + res;
                        result = RESULT_KO + "," + msg;
                        log.error(msg);
                    } else {
                        log.info("The update over the memory zone [" + msgNum + "] was successful; Result" + res);
                        
                        // Remove the processed memory zone from the queue of pending:
                        if(processedMemoryZoneQueues.containsKey(sessionId)) {
                			Set<String> existingProcessedMemoryZoneQueue = processedMemoryZoneQueues.get(sessionId);
                			existingProcessedMemoryZoneQueue.add(msgNum);
                		}
                		else {
                			Set<String> newProcessedMemoryZoneQueue = new HashSet<String>();
                			newProcessedMemoryZoneQueue.add(msgNum);
                			processedMemoryZoneQueues.put(sessionId, newProcessedMemoryZoneQueue);
                		}
                        log.info("The memory zone [" + msgNum + "] was removed from the queue successfully");
                    }

                } catch (Throwable e){                    
                    msg = "Error updating the memory zone [" + msgNum + "]. Message: " + e.getMessage();
                    result = RESULT_KO + "," + msg;
                    log.error(msg);
                }
            }
        }
        
        // Remove the processed memory zones from the pending queue:
        if(processedMemoryZoneQueues.containsKey(sessionId) && processedMemoryZoneQueues.get(sessionId).size() > 0) {
        	Set<String> pending = memoryZoneQueues.get(sessionId);
        	Set<String> processed = processedMemoryZoneQueues.get(sessionId);
        	pending.removeAll(processed);
        	processed.clear();
        }
        
        log.trace("Ends " + CLASS_NAME + "invokeTuxedo");
        
		return result;
	}
}