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


import model.Product;

public class ProductDAO {

    // get danh sách sản phẩm dựa vào mã danh mục
    public List<Product> getListProductByCategory(long category_id)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

    // get danh sách sản phẩm dựa vào mã danh mục
    public List<Product> getListAllProduct()
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product ";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    public Product getProduct(long productID) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
        }
        return product;
    }
    
    // get danh sách sản phẩm dựa vào mã Style
    public List<Product> getListProductByStyle(long style_id)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE style_id = '" + style_id + "'";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    // get danh sách sản phẩm dựa vào mã danh mục Gender
    public List<Product> getListProductByGender(long gender_id)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE gender_id = '" + gender_id + "'";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    // get danh sách sản phẩm dựa vào gia tang dan
    public List<Product> getListProductPriceASC()
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product ORDER BY product_price";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }

    public Product getProductByID(long product_id)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product where product_id = " + "'" + product_id + "'";

        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));

            return product;
        }
        return null;
    }

     // get danh sach theo ten
    public List<Product> getListProductByName(String txtSearch)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
      
        String sql= "SELECT * FROM product WHERE product_name LIKE '%"+txtSearch+"%'";
        PreparedStatement ps = connection.prepareCall(sql);
    
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    public List<Product> getListProductByName2(String txtSearch, int index)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
      
        String sql= "SELECT * FROM product WHERE product_name LIKE '%"+txtSearch+"%'  ORDER BY product.product_id ASC LIMIT "+index+",9";
        PreparedStatement ps = connection.prepareCall(sql);
    
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    public void deleteProduct(String pid) throws SQLException{
        String sql = "delete from product where `product`.`product_id` =" +pid;  
        Connection connection = DBConnect.getConnecttion();
        PreparedStatement ps = connection.prepareCall(sql);
        ps.executeUpdate();
    }
    
    public void insertProduct(String cid, String gid, String pname, String pimage, String pprice, String pdescription) throws SQLException{
        String sql = " INSERT INTO `product` (`product_id`, `category_id`, `gender_id`, `product_name`, `product_image`, `product_price`, `product_description`) "
                + "VALUES (NULL, '" + cid + "', '" + gid + "',' " + pname + "',' " + pimage + "',' " + pprice + "',' " + pdescription + "');";
        Connection connection = DBConnect.getConnecttion();
        PreparedStatement ps = connection.prepareCall(sql);
        ps.executeUpdate();
    }  
   
     public void editProduct(String cid, String gid, String pname, String pimage, String pprice, String pdescription, String id) throws SQLException{
         
        String sql = "UPDATE `product` SET `category_id` = '"+cid+"',"
                                       + " `gender_id` = '"+gid+"',"
                                       + " `product_name` = '"+pname+"',"
                                       + " `product_image` = '"+pimage+"',"
                                       + " `product_price` = '"+pprice+"',"
                                       + " `product_description` = '"+pdescription+"'"
                      + " WHERE `product`.`product_id` = "+id;
        Connection connection = DBConnect.getConnecttion();
        PreparedStatement ps = connection.prepareCall(sql);
        ps.executeUpdate();
    }  
     
     // note
    public ArrayList<Product> getListProductByNav(long categoryID, int firstResult,
            int maxResult) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE category_id = '" + categoryID + "' limit ?,?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
     // Tính tổng sản phẩm
 public int countProduct() throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(product_id) FROM product";

       PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
    }

     public List<Product> pagingProduct(int index) throws SQLException{
         List<Product> list = new ArrayList<>();
          Connection connection = DBConnect.getConnecttion();
         String sql = "SELECT * FROM product  ORDER BY product.product_id ASC LIMIT ?,6";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setInt(1,(index-1) *6);
         ResultSet rs = ps.executeQuery();
         while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
     }
     public List<Product> pagingProduct2(int index) throws SQLException{
         List<Product> list = new ArrayList<>();
          Connection connection = DBConnect.getConnecttion();
         String sql = "SELECT * FROM product  ORDER BY product.product_id ASC LIMIT ?,9";
         PreparedStatement ps = connection.prepareCall(sql);
         ps.setInt(1,(index-1) *9);
         ResultSet rs = ps.executeQuery();
         while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
     }
     
     public List<Product> getListProductByCategory2(String proID)
            throws SQLException {
        Connection connection = DBConnect.getConnecttion();
      String sql="SELECT * FROM product "
              + "WHERE product.category_id ="
              + "(SELECT product.category_id "
              + "from product WHERE product.product_id = "+proID+")";
        
        PreparedStatement ps = connection.prepareCall(sql);
    
        ResultSet rs = ps.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getInt("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
     
     public List<Product> pagingProduct3() throws SQLException{
         List<Product> list = new ArrayList<>();
          Connection connection = DBConnect.getConnecttion();
         String sql = "SELECT * FROM product  ORDER BY product.product_id DESC LIMIT 0,3";
         PreparedStatement ps = connection.prepareCall(sql);
         
         ResultSet rs = ps.executeQuery();
         while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
     }
     
     
     
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();    
         for (Product ds : dao.getListProductByCategory2("7")){
             System.out.println(ds.getProductName() + "- " + ds.getProductPrice());
         }
        
       
       }
    public Product getProduct(String s) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
}
