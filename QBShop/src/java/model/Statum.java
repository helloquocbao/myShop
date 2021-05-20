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
public class Statum {
    private int isAdmin;
    private String Name;

    public Statum(int isAdmin, String Name) {
        this.isAdmin = isAdmin;
        this.Name = Name;
    }

    public Statum() {
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }
    
}
