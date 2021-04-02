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
public class Style {
    private long styleID;
    private String styleName;

    public Style() {
    }

    public Style(long styleID, String styleName) {
        this.styleID = styleID;
        this.styleName = styleName;
    }

    public long getStyleID() {
        return styleID;
    }

    public void setStyleID(long styleID) {
        this.styleID = styleID;
    }

    public String getStyleName() {
        return styleName;
    }

    public void setStyleName(String styleName) {
        this.styleName = styleName;
    }
    
}
