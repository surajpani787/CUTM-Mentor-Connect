package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Mentor;
import com.entity.Userentity;

public class UserDao {

	private Connection conn;

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}

//	Signup code starts here

	public boolean regiter(Userentity u) {
		boolean f = false;

		try {
			String sql = "insert into user_details(fullname,regd_no,branch,stud_email,stud_no,parent_name,parent_no,parent_email,password) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getRegd_no());
			ps.setString(3, u.getBranch());
			ps.setString(4, u.getStud_email());
			ps.setString(5, u.getStud_no());
			ps.setString(6, u.getParent_name());
			ps.setString(7, u.getParent_no()); 
			ps.setString(8, u.getParent_email());
			ps.setString(9, u.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}  

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

//	login section code starts here

	public Userentity login(String stud_email, String password) {

		Userentity u = null;

		try {
			String sql = "select * from user_details where stud_email=? and password=? ";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, stud_email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				u = new Userentity();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setRegd_no(rs.getString(3));
				u.setBranch(rs.getString(4));
				u.setStud_email(rs.getString(5));
				u.setStud_no(rs.getString(6));
				u.setParent_name(rs.getString(7));
				u.setParent_no(rs.getString(8));
				u.setParent_email(rs.getString(9));
				u.setPassword(rs.getString(10));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return u;

	}
	
	
	public List<Userentity> getAllUserList(){
		List<Userentity> list= new ArrayList<Userentity>();
		Userentity ud=null;
		
		try {
			
			String sql="select * from user_details order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				ud=new Userentity();
				ud.setId(rs.getInt(1));
				ud.setFullName(rs.getString(2));
				ud.setRegd_no(rs.getString(3));
				ud.setBranch(rs.getString(4));
				ud.setStud_email(rs.getString(5));
				ud.setStud_no(rs.getString(6));
				ud.setParent_name(rs.getString(7));
				ud.setParent_no(rs.getString(8));
				ud.setStud_email(rs.getString(9));
				
				list.add(ud);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	

}
