package com.company.lastaa;

import java.sql.*;

public class Database {


    private static Database database;
    private Statement statement;


    private Database() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/postgres";
            String username = "postgres";
            String password = "1234567";
            Connection connection = DriverManager.getConnection(url, username, password);
            statement = connection.createStatement();
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Database Connection Creation Failed : " + e.getMessage());
        }
    }







    public static Database getInstance() throws SQLException {

        if(database == null){
            return new Database();
        }

        return database;

    }

    public void setQueryInsert(String query) throws SQLException{
        statement.executeQuery(query);
    }
    public void setQuerySelect(String query)throws SQLException{
        ResultSet resultSet = statement.executeQuery(query);
        while (resultSet.next()){
            System.out.println(resultSet.getInt(1));
            System.out.println(resultSet.getString(2));
            System.out.println(resultSet.getDouble(3));
        }
    }

}
