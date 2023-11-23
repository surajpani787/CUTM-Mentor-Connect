package com.entity;

public class Userentity {

	private int id;
	private String fullName;
	private String regd_no;
	private String branch;
	private String stud_email;
	private String stud_no;
	private String parent_name;
	private String parent_no;
	private String parent_email;
	private String password;



	public Userentity() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Userentity(String fullName, String regd_no, String branch, String stud_email, String stud_no,
			String parent_name, String parent_no, String parent_email, String password) {
		super();
		this.fullName = fullName;
		this.regd_no = regd_no;
		this.branch = branch;
		this.stud_email = stud_email;
		this.stud_no = stud_no;
		this.parent_name = parent_name;
		this.parent_no = parent_no;
		this.parent_email = parent_email;
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



	public String getRegd_no() {
		return regd_no;
	}



	public void setRegd_no(String regd_no) {
		this.regd_no = regd_no;
	}



	public String getBranch() {
		return branch;
	}



	public void setBranch(String branch) {
		this.branch = branch;
	}



	public String getStud_email() {
		return stud_email;
	}



	public void setStud_email(String stud_email) {
		this.stud_email = stud_email;
	}



	public String getStud_no() {
		return stud_no;
	}



	public void setStud_no(String stud_no) {
		this.stud_no = stud_no;
	}



	public String getParent_name() {
		return parent_name;
	}



	public void setParent_name(String parent_name) {
		this.parent_name = parent_name;
	}



	public String getParent_no() {
		return parent_no;
	}



	public void setParent_no(String parent_no) {
		this.parent_no = parent_no;
	}



	public String getParent_email() {
		return parent_email;
	}



	public void setParent_email(String parent_email) {
		this.parent_email = parent_email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}


	

	
	


}
