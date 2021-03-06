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
import model.Product;
import model.Users;


public class UsersDAO {
    
    public ArrayList<Users> getListAccount() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM users";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Users> list = new ArrayList<>();
        while (rs.next()) {
            Users user = new Users();
            user.setFullName(rs.getString("user_fullname"));
            user.setUserEmail(rs.getString("user_email"));
            user.setUserPass(rs.getString("user_pass"));
            user.setIsAdmin(rs.getInt("isAdmin"));
            user.setNumber(rs.getInt("number"));
            list.add(user);
        }
        return list;
    }
    
    public Users login(String email, String pass) throws SQLException {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "SELECT * FROM users where user_email = '" + email + "' and user_pass = '" + pass + "'";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            Users userr = new Users();
            while (rs.next()) {
                userr.setFullName(rs.getString("user_fullname"));
                userr.setUserEmail(rs.getString("user_email"));
                userr.setUserPass(rs.getString("user_pass"));
                userr.setIsAdmin(rs.getInt("isAdmin"));
                userr.setNumber(rs.getInt("number"));
                return userr;
            }
        } catch (SQLException e) {
        }
        return null;

    }
    
    public void editACC(String email) throws SQLException{
      String sql = "UPDATE `users` SET `user_pass` = '123456' WHERE `users`.`user_email` = '"+email+"' ";
      Connection connection = DBConnect.getConnecttion();
        PreparedStatement ps = connection.prepareCall(sql);
        ps.executeUpdate();
    }
    
     public void editInfoAcc(String email, int number, String name, String newPass) throws SQLException{
         String sql = "UPDATE `users` SET "
                                + "`user_fullname` = '"+name+"', "
                                + "`user_pass` = '"+newPass+"', "
                                + "`number` = '"+number+"' "
                                + "WHERE `users`.`user_email` = '"+email+"'";  
      Connection connection = DBConnect.getConnecttion();
        PreparedStatement ps = connection.prepareCall(sql);
        ps.executeUpdate();
    }
    
    public Users checkAccountExist(String email) throws SQLException {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "SELECT * FROM users where user_email = '" + email + "'";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            Users userr = new Users();
            while (rs.next()) {
                userr.setFullName(rs.getString("user_fullname"));
                userr.setUserEmail(rs.getString("user_email"));
                userr.setUserPass(rs.getString("user_pass"));
                return userr;
            }
        } catch (Exception e) {
        }
        return null;

    }
    
    public Users getUserByID(String email)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM users WHERE users.user_email = '"+email+"'";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Users users = new Users();
            users.setFullName(rs.getString("user_fullname"));
            users.setUserEmail(rs.getString("user_email"));
            users.setUserPass(rs.getString("user_pass"));
            users.setIsAdmin(rs.getInt("isAdmin"));
            users.setNumber(rs.getInt("number"));
          
            return users;
        }
        return null;
    }
    
    public void deleteUser(String email) throws SQLException{
        String sql = "DELETE FROM `users` WHERE `users`.`user_email` = '"+ email+ "'";
        
        Connection connection = DBConnect.getConnecttion();
        PreparedStatement ps = connection.prepareCall(sql);
        ps.executeUpdate();
    }
    public void signup(String fullName, String email, String pass){
        try {
            Connection connection = DBConnect.getConnecttion();       
            String sql = "INSERT INTO `users` VALUES ('"+fullName+"','"+email+"', '"+pass+"', b'0', '0')";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        

    }
    public void signup2(String fullName, String email, int sdt){
        try {
            Connection connection = DBConnect.getConnecttion();       
            String sql = "INSERT INTO `users` VALUES ('"+fullName+"','"+email+"', '123456', b'1', '"+sdt+"')";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }
    
    
    public static void main(String[] args) throws SQLException {
        UsersDAO dao = new UsersDAO();
//        for (Users ds : dao.getListAccount()) {
//            System.out.println(ds.getUserID()+ " - " + ds.getFullName()+ " - " + ds.getUserEmail() + " - " + ds.getUserPass());
//        }
        
      
    }
}
