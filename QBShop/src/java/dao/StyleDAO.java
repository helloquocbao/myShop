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
import model.Style;

/**
 *
 * @author QuocBao
 */
public class StyleDAO {
    public ArrayList<Style> getListStyle() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM style";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Style> list = new ArrayList<>();
        while (rs.next()) {
            Style style = new Style();
            style.setStyleID(rs.getInt("style_id"));
            style.setStyleName(rs.getString("style_name"));
            list.add(style);
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        StyleDAO dao = new StyleDAO();
        for (Style ds : dao.getListStyle()) {
            System.out.println(ds.getStyleID()+ " - " + ds.getStyleName());
        }
    }
}
