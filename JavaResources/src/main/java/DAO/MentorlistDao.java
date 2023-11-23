 package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Mentorlist;
//import com.mysql.cj.protocol.Resultset;

public class MentorlistDao {

	private Connection conn;

	public MentorlistDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addMentorlist(String ment) {

		boolean f = false;

		try {
			String sql = "insert into mentorsub(Mentorsub_name) values(?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, ment);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<Mentorlist> getAllMentorlist() {
		List<Mentorlist> list = new ArrayList<Mentorlist>();
		Mentorlist m = null;

		try {
			String sql = "select * from mentorsub";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				m = new Mentorlist();
				m.setId(rs.getInt(1));
				m.setMentorsub_name(rs.getString(2));
				list.add(m);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

}
