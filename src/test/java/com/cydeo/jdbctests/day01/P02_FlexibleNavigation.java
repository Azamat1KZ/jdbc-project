package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {
    String dbUrl = "jdbc:oracle:thin:@3.86.24.102:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees");

        //first row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //second row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //last row --> moves cursor to the last row in the ResultSet object
        rs.last();
        System.out.println(rs.getString(1) + " " + rs.getString(2));


        //getRow -> it will return current row
        System.out.println("=============== GET ROW ===================");
        int row = rs.getRow();
        System.out.println(String.valueOf(row)); //107

        //jump to row 10  --> moves the cursor to the given row number in this ResulSet object
        System.out.println("=============== ABSOLUTE ===================");
        rs.absolute(10);
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow());//10

        //jump to row 9  --> moves the cursor to the gven row number in this ResulSet object
        System.out.println("=============== Previous ===================");
        rs.previous();
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow());//9

        System.out.println("=============== PRINT ALL TABLES DYNAMIC ===================");
        //it is the position before first row
        rs.beforeFirst();

        //dynamic way to the end
        while (rs.next()){
            System.out.println(rs.getRow() + " " + rs.getString(1) + " " + rs.getString(2));
        }

        //close conn
        rs.close();
        statement.close();
        conn.close();
    }
}

