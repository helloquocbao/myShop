/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author QuocBao
 */
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import model.Bill;
import model.Users;

public class BillDAO {

    public void insertBill(Bill bill) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO bill VALUES(?,?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bill.getBillID());
        ps.setString(2, bill.getEmail());
        ps.setDouble(3, bill.getTotal());
        ps.setString(4, bill.getAddress());
        ps.setTimestamp(5, bill.getDate());
        ps.setInt(6,bill.getNumber());
        ps.executeUpdate();
    }
    
    public ArrayList<Bill> getListBill() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM Bill";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Bill> list = new ArrayList<>();
        while (rs.next()) {
            Bill bill = new Bill();
            bill.setBillID(rs.getLong("bill_id"));
            bill.setEmail(rs.getString("user_id"));
            bill.setTotal(rs.getLong("total"));
            bill.setAddress(rs.getString("address"));
            bill.setDate(rs.getTimestamp("date"));
            bill.setNumber(rs.getInt("number"));
            list.add(bill);
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {

        
        BillDAO dao = new BillDAO();
        for (Bill ds : dao.getListBill()){
            System.out.println(ds.getBillID() + " - "+ ds.getEmail());
        }
    }
}
