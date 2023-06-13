package co.edu.sena.project2687351.model.repository;

import co.edu.sena.project2687351.model.Category;
import co.edu.sena.project2687351.model.User;

import java.sql.SQLException;

public class TestCategoryRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<Category> repository = new CategoryRepositoryImpl();

        System.out.println("=================saveObj Insert=======================");
        Category categoryInsert = new Category();
        categoryInsert.setCategory_name("a");
        repository.saveObj(categoryInsert);

    }
}
