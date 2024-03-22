/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class Shipping {

    private int shipId;
    private String name;
    private String phone;
    private String address;

    public Shipping() {
    }

    public Shipping(int shipId, String name, String phone, String address) {
        this.shipId = shipId;
        this.name = name;
        this.phone = phone;
        this.address = address;
    }

    public int getShipId() {
        return shipId;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public void setShipId(int shipId) {
        this.shipId = shipId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

}

