/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author Admin
 */
public class AccountDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public Account login(String username, String password) {
        String sql = "select * from Account where [username] = ? and [password] = ?";

        try {
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            rs = ps.executeQuery();

            while (rs.next()) {
                Account account = new Account();
                account.setUsername(rs.getString(1));
                account.setPassword(rs.getString(2));
                account.setName(rs.getString(3));
                account.setPhone(rs.getString(4));
                account.setAddress(rs.getString(5));
                account.setEmail(rs.getString(6));
                account.setIsAdmin(rs.getInt(7));
                return account;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String username) {
        String sql = "select * from Account where username = ?";

        try {
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            rs = ps.executeQuery();

            while (rs.next()) {
                Account account = new Account();
                account.setUsername(rs.getString(1));
                account.setPassword(rs.getString(2));
                account.setName(rs.getString(3));
                account.setPhone(rs.getString(4));
                account.setAddress(rs.getString(5));
                account.setEmail(rs.getString(6));
                account.setIsAdmin(rs.getInt(7));
                return account;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void changePass(String new_pass, String username) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET \n"
                + "      [password] = ?\n"
                + "\n"
                + " WHERE [username] = ?";

        try {
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);
            ps.setString(1, new_pass);
            ps.setString(2, username);

            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void updateProfile(String name, String phone, String address, String email, String username) {

        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [name] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[email] = ?\n"
                + " WHERE [username] = ?";
        try {
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setString(4, email);
            ps.setString(5, username);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void signup(String username, String password) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[name]\n"
                + "           ,[phone]\n"
                + "           ,[address]\n"
                + "           ,[email]\n"
                + "           ,[isAdmin])\n"
                + "     VALUES\n"
                + "           (?, ?, '','','','',0)";
        try {
            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);

            ps.executeUpdate();

        } catch (Exception e) {

        }
    }

    public static void main(String[] args) {
        AccountDAO a = new AccountDAO();
        a.updateProfile("Long", "", "Minh Khai", "", "user3");
    }

}
