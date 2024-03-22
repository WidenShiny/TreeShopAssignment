/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import model.Cart;
import model.OrderDetails;

/**
 *
 * @author Admin
 */
public class OrderDetailsDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [dbo].[OrderDetails]\n"
                    + "           ([orderId]\n"
                    + "           ,[productId]\n"
                    + "           ,[productName]\n"
                    + "           ,[[imageUrl]\n"
                    + "           ,[price]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?)";
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setInt(1, orderId);

            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(2, cart.getProduct().getProductId());
                ps.setString(3, cart.getProduct().getProductName());
                ps.setString(4, cart.getProduct().getImageUrl());
                ps.setInt(5, cart.getProduct().getPrice());
                ps.setInt(6, cart.getQuantity());
                ps.executeUpdate();
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public List<OrderDetails> getDetailsByOrderId(int orderId) {
        List<OrderDetails> listDetails = new ArrayList<>();
        try {
            String sql = "  select * from OrderDetails where OrderId = ?";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setInt(1, orderId);

            rs = ps.executeQuery();

            while (rs.next()) {
                OrderDetails detail = new OrderDetails();
                detail.setProductName(rs.getString(4));
                detail.setImageUrl(rs.getString(5));
                detail.setPrice(rs.getInt(6));
                detail.setQuantity(rs.getInt(7));
                listDetails.add(detail);
            }
        } catch (Exception e) {
        }
        return listDetails;
    }

    public List<OrderDetails> getOrderByUser(String username) {
        List<OrderDetails> purchaseHis = new ArrayList<>();
        try {
            String sql = "  select * from Orders inner join OrderDetails on Orders.orderId = OrderDetails.orderId where Orders.username = ?";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, username);

            rs = ps.executeQuery();

            while (rs.next()) {
                OrderDetails purchase = new OrderDetails();
                purchase.setProductName(rs.getString(10));
                purchase.setImageUrl(rs.getString(11));
                purchase.setPrice(rs.getInt(12));
                purchase.setQuantity(rs.getInt(13));
                purchaseHis.add(purchase);

            }
        } catch (Exception e) {
        }
        return purchaseHis;
    }

}
