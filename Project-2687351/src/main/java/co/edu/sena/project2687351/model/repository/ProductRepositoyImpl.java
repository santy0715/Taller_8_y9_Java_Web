package co.edu.sena.project2687351.model.repository;

import co.edu.sena.project2687351.model.Product;
import co.edu.sena.project2687351.util.DBConnection;
import java.sql.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class ProductRepositoyImpl implements Repository<Product>{
private String sql=null;
    @Override
    public List<Product> listAllObj() throws SQLException {
        sql = "select Id_product, Product_name, Product_value, category_id" + " from product order by Id_product, Product_name, Product_value, category_id ";
        List<Product> products = new ArrayList<>();
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Product p = createObj(rs);
                products.add(p);
            }
        }
        return products;
    }

    @Override
    public Product byIdOBj(Integer id) throws SQLException {
        sql = "select Id_product, Product_name, Product_value, category_id " + "from product  where Id_product=? ";
        Product products = null;
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1,id);
            try(ResultSet rs = ps.executeQuery()){
                if (rs.next()){
                    products= createObj(rs);
                }
            }
        }
        return products;
    }

    @Override
    public Integer saveObj(Product products) throws SQLException {
        int rowsAffected = 0;
        if(products.getId_product() != null && products.getId_product() == 0) {
            sql = "update product set  Product_name=?,  Product_value=?, category_id=? " + " where  Id_product =?";
        }
        else{
            sql= "insert into product (Product_name,Product_value, category_id)"+
                    "values (upper(?),upper(?),upper(?)) ";
        }
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1, products.getProduct_name());
            ps.setInt(2, products.getProduct_value());
            ps.setInt(3, products.getCategory_id());
            if(products.getId_product() != null &&products.getId_product() == 0){
                ps.setInt(4, products.getId_product());
            }

            rowsAffected = ps.executeUpdate();
        }

        return rowsAffected;
    }

    @Override
    public void deleteObj(Integer id) throws SQLException {
        sql= "delete from product where Id_product=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1, id);
            ps.execute();
        }
    }
    @Override
    public Product createObj(ResultSet rs) throws SQLException {
        Product products = new Product();
        products.setId_product(rs.getInt("Id_product"));
        products.setProduct_name(rs.getString("Product_name"));
        products.setProduct_value(rs.getInt("Product_value"));
        products.setCategory_id(rs.getInt("category_id"));
        return products;
    }
}
