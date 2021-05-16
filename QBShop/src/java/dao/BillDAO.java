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
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import model.Bill;

public class BillDAO {

    public void insertBill(Bill bill) throws SQLException {
 Connection connection = DBConnect.getConnecttion();
 String sql = "INSERT INTO bill VALUES(?,?,?,?,?)";
 PreparedStatement ps = connection.prepareCall(sql);
 ps.setLong(1, bill.getBillID());
 ps.setString(2, bill.getEmail());
 ps.setDouble(3, bill.getTotal());
 ps.setString(4, bill.getAddress());
 ps.setTimestamp(5, bill.getDate());
 ps.executeUpdate();
 }

    public static void main(String[] args) throws SQLException {

        new BillDAO().insertBill(new Bill(0, "0", 0, "s", new Timestamp(new Date().getTime())));
    }
}
