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
import java.util.ArrayList;
import java.util.List;
import model.BillDetail;
import model.BillInfo;

public class BillDetalDAO {

    public void insertBillDetail(BillDetail bd) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO bill_detail VALUES(?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bd.getBillDetailID());
        ps.setLong(2, bd.getBillID());
        ps.setLong(3, bd.getProductID());
        ps.setDouble(4, bd.getPrice());
        ps.setInt(5, bd.getQuantity());
        ps.executeUpdate();
    }

    public List<BillInfo> getListOrderByIDBill(String idBill)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT product.product_name, bill_detail.quantity , bill_detail.price FROM bill_detail, bill, product "
                + "WHERE bill_detail.bill_id =bill.bill_id "
                + "and product.product_id=bill_detail.product_id "
                + "and bill.bill_id = '"+idBill+"'";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        List<BillInfo> list = new ArrayList<>();
        while (rs.next()) {
            BillInfo billdetail = new BillInfo();
            billdetail.setProductName(rs.getString("product_name"));       
           billdetail.setPrice(rs.getDouble("price"));        
            billdetail.setQuantity(rs.getInt("quantity"));
            list.add(billdetail);
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        BillDetalDAO dao = new BillDetalDAO();
        String idBill = "1621617380960";
          for (BillInfo ds : dao.getListOrderByIDBill(idBill)){
              System.out.println(ds.getProductName() + ds.getPrice() + ds.getQuantity());
          }
    }
}
