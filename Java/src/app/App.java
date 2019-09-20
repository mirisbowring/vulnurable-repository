package app;

import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.*;

public class App {
    public static void main(String[] args) {
        System.out.println("Hello Java");
    }

    private void sendLoginPOST() throws Exception {
        String url = "https://website.com/login?user=myname&password=Start123!";

        URL obj = new URL(url);
        HttpURLConnection con = (HttpURLConnection) obj.openConnection();

    }

    /**
     * This method creates a sample database connection with fix password, user and ip
     */
    private void createDBConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://10.27.8.144:3306/databasename5", "user5", "p4ssw0rd");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from emp");
            while (rs.next())
                System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
