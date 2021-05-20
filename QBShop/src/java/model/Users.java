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
public class Users {
    private String fullName;
    private String userEmail;
    private String userPass;
    private int isAdmin;
    
    public Users( String fullName, String userEmail, String userPass, int isAdmin ,  String statum) {
        this.fullName = fullName;
        this.userEmail = userEmail;
        this.userPass = userPass;
        this.isAdmin = isAdmin;
    }

 


    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Users() {
    }


    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPass() {
        return userPass;
    }

    public void setUserPass(String userPass) {
        this.userPass = userPass;
    }
}
