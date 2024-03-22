/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Shipping;

public class ShippingDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public int createReturnId(Shipping shipping) {
        try {
            String sql = "INSERT INTO [dbo].[Shipping]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            ps.setString(1, shipping.getName());
            ps.setString(2, shipping.getPhone());
            ps.setString(3, shipping.getAddress());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Shipping> getAllShip() {
        List<Shipping> listShip = new ArrayList<>();
        try {
            String sql = " select * from Orders inner join Shipping on Orders.shipId = Shipping.shipId";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                Shipping ship = new Shipping(rs.getInt(6), rs.getString(8), rs.getString(9), rs.getString(10));
                listShip.add(ship);
            }
        } catch (Exception e) {
        }
        return listShip;
    }

    public Shipping getShipByOrderId(int orderId) {
        try {
            String sql = "  select * from Orders inner join Shipping on Orders.shipId = Shipping.shipId where Orders.orderId = ?";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setInt(1, orderId);

            rs = ps.executeQuery();

            while (rs.next()) {
                Shipping shipInfor = new Shipping();
                shipInfor.setName(rs.getString(8));
                shipInfor.setPhone(rs.getString(9));
                shipInfor.setAddress(rs.getString(10));
                return shipInfor;
            }
        } catch (Exception e) {
        }
        return null;
    }

}
