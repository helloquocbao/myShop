/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Gender;

/**
 *
 * @author QuocBao
 */
public class GenderDAO {

    public List<Gender> get;
    public ArrayList<Gender> getListGender() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM gender";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Gender> list = new ArrayList<>();
        while (rs.next()) {
            Gender gender = new Gender();
            gender.setGenderID(rs.getInt("gender_id"));
            gender.setGenderName(rs.getString("gender_name"));
            list.add(gender);
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        GenderDAO dao = new GenderDAO();
        for (Gender ds : dao.getListGender()) {
            System.out.println(ds.getGenderID()+ " - " + ds.getGenderName());
        }
    }
}
