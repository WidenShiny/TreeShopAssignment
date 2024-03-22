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
import model.Order;

public class OrderDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public int createReturnId(Order order) {
        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([username]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipId])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            ps.setString(1, order.getUserName());
            ps.setInt(2, order.getTotalPrice());
            ps.setString(3, order.getNote());
            ps.setInt(4, order.getShipId());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public List<Order> getAllOrder() {
        List<Order> listOrders = new ArrayList<>();
        try {
            String sql = "select * from Orders order by orderId desc";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getDate(5), rs.getInt(6));
                listOrders.add(o);
            }
        } catch (Exception e) {
        }
        return listOrders;
    }

    public List<Order> getOrderByUser(String username) {
        List<Order> listOrders = new ArrayList<>();
        try {
            String sql = "select * from Orders where username = ? order by createDate desc";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, username);

            rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getDate(5), rs.getInt(6));
                listOrders.add(o);
            }
        } catch (Exception e) {
        }
        return listOrders;
    }

    public static void main(String[] args) {
        OrderDAO d = new OrderDAO();
        List<Order> list = d.getOrderByUser("user1");
        for (Order order : list) {
            System.out.println(order);
        }

    }
}
