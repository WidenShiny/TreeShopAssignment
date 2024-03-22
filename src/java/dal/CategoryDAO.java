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
import model.Category;

/**
 *
 * @author Admin
 */
public class CategoryDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public List<Category> getAllCategories() {
        List<Category> list = new ArrayList<>();
        try {
            String sql = "select * from Category";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                Category category = new Category();
                category.setCategoryId(rs.getInt(1));
                category.setCategoryName(rs.getString(2));
                list.add(category);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String getCategoryById(int categoryId) {
        try {
            String sql = "select categoryName from Category where categoryId = ?";

            conn = new DBContext().getConnection();

            ps = conn.prepareStatement(sql);

            ps.setInt(1, categoryId);

            rs = ps.executeQuery();

            if (rs.next()) {
                String categoryName = rs.getString(1);
                return categoryName;
            }
        } catch (Exception e) {
        }
        return null;
    }

}
