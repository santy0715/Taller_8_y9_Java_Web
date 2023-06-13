package co.edu.sena.project2687351.model.repository;

import co.edu.sena.project2687351.model.Product;

import java.sql.SQLException;

public class TestProductRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<Product> repository = new ProductRepositoyImpl();

        System.out.println("=================saveObj Insert=======================");
        Product productInsert = new Product();
        productInsert.setProduct_name("hola");
        productInsert.setProduct_value(1000);
        productInsert.setCategory_id(1);
        repository.saveObj(productInsert);
    }
}
