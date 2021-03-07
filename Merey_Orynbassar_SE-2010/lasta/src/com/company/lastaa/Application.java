package com.company.lastaa;

import java.sql.SQLException;

public class Application {
    public static void main(String[] args) throws SQLException {
        Database foo = Database.getInstance();
        foo.setQuerySelect("SELECT*FROM Furniture;");
    }
}
