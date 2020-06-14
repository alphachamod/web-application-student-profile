package com.student;

public class student {
	
	
	private int id;
	private String stID;
	private String stName;
	private String stEmail;
	private String total_marks;
	private String GPA; 
	
	public student(int id, String stID, String stName, String stEmail, String total_marks, String gPA) {
		
		this.id = id;
		this.stID = stID;
		this.stName = stName;
		this.stEmail = stEmail;
		this.total_marks = total_marks;
		GPA = gPA;
	}
	public int getId() {
		return id;
	}
	public String getStID() {
		return stID;
	}
	public String getStName() {
		return stName;
	}
	public String getStEmail() {
		return stEmail;
	}
	public String getTotal_marks() {
		return total_marks;
	}
	public String getGPA() {
		return GPA;
	}

	
	

	

}
