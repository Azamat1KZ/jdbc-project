package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

    /*
    ALT+ENTER -> Introduce local variable
     */
    public static void main(String[] args) throws SQLException {
        String dbUrl="jdbc:oracle:thin:@3.86.24.102:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";

        // DriverManager class getConnection is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //Statement helps us to execute query
        Statement statement = conn.createStatement();

        //ResultSet stores data that we get from after query execution
        //re is just a variable/object name
        ResultSet rs = statement.executeQuery("select * from regions");

        /*
        How to run query?
        -Chose query
        -CTRL+ENTER
        -Chose session
         */

        //next() --> move to cursor in next line
        //rs.next();

        //getInt() will return Int if we have Int value in that column
        //index starts from 1 with SQL tables
        //getInt(columnLabel)
        //System.out.println(rs.getInt(1));
        //System.out.println(rs.getInt("REGION_ID"));

        //get me region name
        //System.out.println(rs.getString(2));
        //System.out.println(rs.getString("REGION_NAME"));

        //move to the next row
        //rs.next();

        //2 - Americas
        //System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));

        //move to the next row
        //rs.next();

        //3 - Asia
        //System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));

        //move to the next row
        //rs.next();

        //4 - Middle East and Africa
        //System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));

        //move to the next row
        //rs.next();

        while (rs.next()){
            System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
        }

        //close connection
        rs.close();
        statement.close();
        conn.close();
    }

}
