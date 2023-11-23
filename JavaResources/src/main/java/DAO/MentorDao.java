package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Mentor;

public class MentorDao {

	private Connection conn;

	public MentorDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean registerMentor(Mentor m) {
		boolean f = false;

		try {

			String sql = "insert into mentor(fullName,dob,qualification,Mentorlist, email,mobileno,password) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, m.getFullName());
			ps.setString(2, m.getDob());
			ps.setString(3, m.getQualification());
			ps.setString(4, m.getMentorlist());
			ps.setString(5, m.getEmail());
			ps.setString(6, m.getMobileno());
			ps.setString(7, m.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}
	
	public List<Mentor> getAllMentor(){
		List<Mentor> list= new ArrayList<Mentor>();
		Mentor mt=null;
		
		try {
			
			String sql="select * from mentor order by id desc";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				mt=new Mentor();
				mt.setId(rs.getInt(1));
				mt.setFullName(rs.getString(2));
				mt.setDob(rs.getString(3));
				mt.setQualification(rs.getString(4));
				mt.setMentorlist(rs.getString(5));
				mt.setEmail(rs.getString(6));
				mt.setMobileno(rs.getString(7));
				mt.setPassword(rs.getString(8));
				
				list.add(mt);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	
	public Mentor getMentorById(int id){
		Mentor mt=null;
		
		try {
			
			String sql="select * from mentor where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				mt=new Mentor();
				mt.setId(rs.getInt(1));
				mt.setFullName(rs.getString(2));
				mt.setDob(rs.getString(3));
				mt.setQualification(rs.getString(4));
				mt.setMentorlist(rs.getString(5));
				mt.setEmail(rs.getString(6));
				mt.setMobileno(rs.getString(7));
				mt.setPassword(rs.getString(8));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mt;
		
	}
	
	
	public boolean updateMentor(Mentor m) {
		boolean f = false;

		try {

			String sql = "update  mentor set fullName=?,dob=?,qualification=?,Mentorlist=?, email=?,mobileno=?,password=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, m.getFullName());
			ps.setString(2, m.getDob());
			ps.setString(3, m.getQualification());
			ps.setString(4, m.getMentorlist());
			ps.setString(5, m.getEmail());
			ps.setString(6, m.getMobileno());
			ps.setString(7, m.getPassword());
			ps.setInt(8, m.getId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	
	public boolean deleteMentor(int id) {
		
		boolean f=false;
		
		try {
			
			String sql="delete from mentor where id=?";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	
	public Mentor login(String email, String password) {
		
		Mentor mt=null;
		
		try {
			
			String sql = "select * from mentor where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				mt=new Mentor();
				mt.setId(rs.getInt(1));
				mt.setFullName(rs.getString(2));
				mt.setDob(rs.getString(3));
				mt.setQualification(rs.getString(4));
				mt.setMentorlist(rs.getString(5));
				mt.setEmail(rs.getString(6));
				mt.setMobileno(rs.getString(7));
				mt.setPassword(rs.getString(8));
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return mt;
	}
	
	
	public int countMentor() {
		int i=0;
		try {
			String sql="select * from mentor";
			PreparedStatement ps =conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
		
	}
	
	public int countSubject() {
		int i=0;
		try {
			String sql="select * from mentorsub ";
			PreparedStatement ps =conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
		
	}
	
	
	public int countMentee() {
		int i=0;
		try {
			String sql="select * from user_details ";
			PreparedStatement ps =conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
		
	}
	
	
	public int countMentee_Feedback() {
		int i=0;
		try {
			String sql="select * from feedback";
			PreparedStatement ps =conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
		
	}
	
	
	
	
}
