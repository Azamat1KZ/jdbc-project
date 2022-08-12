package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_LibraryDBTest {

    // Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username = "library2_client";
    String password = "6s2LQQTjBcGFfDhY";
    @Test
    public void testUserCount() {
        //Create a conn
        DB_Util.createConnection(url, username, password);
        //Run query
        DB_Util.runQuery("select count(*) from users");

        // get how many user we have from DB
        String expectedCount = DB_Util.getCellValue(1, 1);

        //get how many user we have from DB
        //String cellValue = DB_Util.getCellValue(1, 1);

        //get how many users we have from UI
        String actualCount = "267";

        //Make an assertion
        Assertions.assertEquals(expectedCount, actualCount);

        // Close conn
        DB_Util.destroy();
    }
    @Test
    public void testBookCount(){
        //Create conn
        DB_Util.createConnection(url, username, password);

        //Run query
        DB_Util.runQuery("select count(*) from books");

        //Get how many books we have from DB
        String expectedBookCount = DB_Util.getFirstRowFirstColumn();

        //Get how many books we have from UI

        String actualBookCount="1407";

        //Make an assertion
        Assertions.assertEquals(expectedBookCount, actualBookCount);

        //Close the conn
        DB_Util.destroy();
    }
}
