package com.example.mainapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

    public static Database databaseInstance;
    public static Connection connection;

    private Database() throws SQLException {
    }

    public static final String USERNAME = "newserver";
    public static final String PASSWORD = "rooter-01101";
    public static final String CONN_STR = "jdbc:sqlserver://localhost\\sqlexpress:1433;databaseName=sparkrentdb";

    public static Database getInstance() throws SQLException {
        if (databaseInstance == null) {
            System.out.println("Getting your instance");
            databaseInstance = new Database();
        }
        return databaseInstance;
    }

    public Connection connect() {
        try {
            System.out.println("Connecting");
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(CONN_STR, USERNAME, PASSWORD);
        } catch (Exception e) {
            System.out.println(e.getMessage());
            connection = null;
        }
        if (connection == null) {
            System.out.println("Null connection");
            System.exit(1);
        }
        else System.out.println("Connected");
        return connection;
    }

}
