package com.ericsson.altamira.acaa.tm;

import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Tester {
		

	private static HashMap<String, String> maps;
	private static HashMap<String, String> paths;
	
	
	/**
	 * @param args
	 * @throws IOException 
	 * @throws UnsupportedEncodingException 
	 */
	public static void main(String[] args) throws UnsupportedEncodingException, IOException {

		maps = new HashMap<String, String>();
		paths = new HashMap<String, String>();
		
		File mDir = new File("E:\\@Work\\ERICSSON\\SID\\metadata\\");
		File[] dirs = mDir.listFiles();
		for (int i = 0; i < dirs.length; i++) {
			
			System.out.print("### FOLDER: " + dirs[i].getName());
			
			File[] nspacefile = dirs[i].listFiles(new FileFilter() {
				
				@Override
				public boolean accept(File pathname) {					
					return (pathname.getName().indexOf("nspace") > -1);
				}
			});
			
			String curPath = null;
			if(nspacefile.length>0) {
				Scanner nspaceScanner = new Scanner(nspacefile[0]);
				
				Pattern pat = Pattern.compile("http[^<]*");
				String line = null;
				String nspace = null;
				nspaceScanner.reset();
				while(nspaceScanner.hasNextLine()) {
					line = nspaceScanner.nextLine();
					Matcher m = pat.matcher(line);	
					if(m.find())
						nspace = m.group();
				}
								
				nspaceScanner.close();
				
				if(nspace==null)
					continue;
				
				String endPath = "";
				
				if(nspace.indexOf("SOAP")>0) {
					endPath = nspace.substring(nspace.indexOf("SOAP")+5);
				}
				else {
					endPath = nspace.substring(nspace.indexOf("xml")+4);
				}
				
				curPath = "E:\\@Work\\ERICSSON\\SID\\metadata\\";
				String[] p = endPath.split("/");
				for (int j = 0; j < p.length; j++) {
					curPath += "\\" + p[j];
					
					String name = p[j];
					for (int k = (j-1); k >= 0; k--) {
						name = p[k] + "." + name;
					}

					File tDir = new File(curPath);
					if(!tDir.exists()) {
						tDir.mkdir();						
						
						FileOutputStream fout = new FileOutputStream(new File(curPath + "\\" + "nspace_" + p[j] + ".xml"));
						fout.write("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>".getBytes("UTF-8"));
						fout.write(("<nameSpace name=\"" + p[j] + "\">").getBytes("UTF-8"));
						fout.write(("<label>" + p[j] + "</label>").getBytes("UTF-8"));
						fout.write("<metaVersion>4</metaVersion>".getBytes("UTF-8"));
						if(j==p.length-1)
							fout.write(("<targetNS>" + nspace + "</targetNS>").getBytes("UTF-8"));
						fout.write("</nameSpace>".getBytes("UTF-8"));
						
						fout.close();
						
					}
					
					if(j==p.length-1) {
						maps.put(dirs[i].getName(), name);
						paths.put(dirs[i].getName(), curPath);
					}
				}
				
			}
		}
		
		for (int i = 0; i < dirs.length; i++) {
			
			String curPath = paths.get(dirs[i].getName()); 
			
			System.out.println(" TO " + curPath);
			
			File[] otherfiles = dirs[i].listFiles(new FileFilter() {
				
				@Override
				public boolean accept(File pathname) {					
					return (pathname.getName().indexOf("nspace") == -1) && !pathname.isDirectory();
				}
			});
			
			for (int j = 0; j < otherfiles.length; j++) {
				
				System.out.println(" COPY: " + otherfiles[j].getName());
				
				File fD = new File(curPath + "\\" + otherfiles[j].getName());
				if(fD.exists())
					fD.delete();
				
				FileOutputStream fout = new FileOutputStream(new File(curPath + "\\" + otherfiles[j].getName()));
				Scanner fIn = new Scanner(otherfiles[j]);
				fIn.reset();
				while(fIn.hasNextLine()) {
					String line = fIn.nextLine();
					
					Iterator<String> itKeys = maps.keySet().iterator();
					while (itKeys.hasNext()) {
						String key = (String) itKeys.next();
						line = line.replaceAll(("\""+key+"\\."), ("\"" + maps.get(key) + "."));
						line = line.replaceAll(("_"+key+"\\."), ("_" + maps.get(key) + "."));						
					}
					fout.write(line.getBytes("UTF-8"));
				}
				fout.flush();
				fout.close();
				fIn.close();
				otherfiles[j].deleteOnExit();
			}
		}
		
		
		/*
		String connCode = "RE1";
		String connConf = "jdbc:oracle:thin:@localhost:1521:orcl;NGAA;123";
		
		TransactionManager.createTransaction(connCode, connConf);
		TransactionManager.executeStatment(connCode, "CALL INSERT_TEST_1('1')", null);
		TransactionManager.commitTransaction(connCode);
		TransactionManager.executeStatment(connCode, "CALL INSERT_TEST_2('1', '2')", null);
		TransactionManager.rollbackTransaction(connCode);
		TransactionManager.executeStatment(connCode, "CALL INSERT_TEST_3('-1', '2')", null);
		TransactionManager.commitTransaction(connCode);
		*/
	}

}
