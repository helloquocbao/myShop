/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author QuocBao
 */
public class Product {
    private long productID;
    private long categoryID;
    private long styleID;
    private long genderID;
    private String productName;
    private String productImage;
    private double productPrice;
    private String productDescription;

    public Product() {
    }

    public Product(long productID, long categoryID, long styleID, long genderID,
            String productName, String productImage, double productPrice,
                String productDescription) {
        
        this.productID = productID;
        this.categoryID = categoryID;
        this.styleID = styleID;
        this.genderID = genderID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.productDescription = productDescription;
        
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public long getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }

    public long getStyleID() {
        return styleID;
    }

    public void setStyleID(long styleID) {
        this.styleID = styleID;
    }

    public long getGenderID() {
        return genderID;
    }

    public void setGenderID(long genderID) {
        this.genderID = genderID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }
    
    

}
