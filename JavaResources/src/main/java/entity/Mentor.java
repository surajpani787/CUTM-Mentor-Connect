 package com.entity;

public class Mentor {

	private int id;
	private String fullName;
	private String dob;
	private String qualification;
	private String Mentorlist;
	private String email;
	private String mobileno;
	private String password;

	public Mentor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mentor(String fullName, String dob, String qualification, String mentorlist, String email, String mobileno,
			String password) {
		super();
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		Mentorlist = mentorlist;
		this.email = email;
		this.mobileno = mobileno;
		this.password = password;
	}

	public Mentor(int id, String fullName, String dob, String qualification, String mentorlist, String email,
			String mobileno, String password) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		Mentorlist = mentorlist;
		this.email = email;
		this.mobileno = mobileno;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMentorlist() {
		return Mentorlist;
	}

	public void setMentorlist(String mentorlist) {
		Mentorlist = mentorlist;
	}

}
