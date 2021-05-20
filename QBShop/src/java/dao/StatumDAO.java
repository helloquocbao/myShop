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
import model.Statum;

/**
 *
 * @author QuocBao
 */
public class StatumDAO {

  
    public List<Statum> get;
    public ArrayList<Statum> getListStatum() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM statum";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Statum> list = new ArrayList<>();
        while (rs.next()) {
            Statum statum = new Statum();
            statum.setIsAdmin(rs.getInt("isAdmin"));
            statum.setName(rs.getString("Name"));
            list.add(statum);
        }
        return list;
    }
     public static void main(String[] args) throws SQLException {
        StatumDAO dao = new StatumDAO();
        for (Statum ds : dao.getListStatum()) {
            System.out.println(ds.getIsAdmin()+ " - " + ds.getName());
        }
    }
}
