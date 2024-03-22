/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Order {

    private int orderId;
    private String userName;
    private int totalPrice;
    private String note;
    private Date createDate;
    private int shipId;
    
        public String getStringDate() {
        return new SimpleDateFormat("dd/MM/yyyy").format(createDate);
    }

    public Order() {
    }

    public Order(int orderId, String userName, int totalPrice, String note, Date createDate, int shipId) {
        this.orderId = orderId;
        this.userName = userName;
        this.totalPrice = totalPrice;
        this.note = note;
        this.createDate = createDate;
        this.shipId = shipId;
    }

    public int getOrderId() {
        return orderId;
    }

    public String getUserName() {
        return userName;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public String getNote() {
        return note;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public int getShipId() {
        return shipId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public void setShipId(int shipId) {
        this.shipId = shipId;
    }

}

