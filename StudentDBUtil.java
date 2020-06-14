package com.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class StudentDBUtil {

	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean Con_teacher(String name, String itno, String email, String issue ) {
		 
	boolean isSuccess = false;
	
	String url = "jdbc:mysql://localhost:3306/student" ;
	String user = "root" ;
	String pass ="password";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	
		
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
			
		String sql = "insert into con_teacher values (0,'"+name+"','"+itno+"','"+email+"', '"+issue+"')";
	
		int rs= stmt.executeUpdate(sql);
		
		if (rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
	
	
	
	}
	catch (Exception e) {
			e.printStackTrace();
	
	}
	
	
	return isSuccess;
	
	}
	
	
	
	
	

	public static List<student> getStudentDetails(String id) {
	
	
	
	ArrayList<student> stu= new ArrayList<>()	;
	
	String url = "jdbc:mysql://localhost:3306/student" ;
	String user = "root" ;
	String pass ="password";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	
		Connection con = DriverManager.getConnection(url, user, pass);
		stmt = con.createStatement();
		
		String sql = "select * from results where id= '"+id+"'";
		rs = stmt.executeQuery(sql);
		
		while (rs.next()) {
			int stid =rs.getInt(1);
			String stID = rs.getString(2);
			String stName = rs.getString(3);
			String stEmail = rs.getString(4);
			String total_marks = rs.getString(5);
			String GPA = rs.getString(6);
			
			student s = new student(stid,stID,stName, stEmail, total_marks ,GPA);
			stu.add(s);
		}
	
			
	}
	catch (Exception e) {
		e.printStackTrace();
	
	}
	return stu;
	} 
	

	

	


}




























