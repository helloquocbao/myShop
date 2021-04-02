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
public class Gender {
    private long genderID;
    private String genderName;

    public Gender() {
    }

    public Gender(long genderID, String genderName) {
        this.genderID = genderID;
        this.genderName = genderName;
    }

    public long getGenderID() {
        return genderID;
    }

    public void setGenderID(long genderID) {
        this.genderID = genderID;
    }

    public String getGenderName() {
        return genderName;
    }

    public void setGenderName(String genderName) {
        this.genderName = genderName;
    }
    
    
}
