package com;

import java.sql.*;

public class resources {

    /**
     * 数据库驱动
     */
    final static String dbDriver = "com.mysql.jdbc.Driver";

    /**
     * 数据库服务IP
     */
    final static String host = "10.10.133.219";

    /**
     * 数据库服务端口
     */
    final static String port = "3306";

    /**
     * 数据库连接用户名
     */
    final static String user = "root";


    /**
     * 数据库连接密码
     */
    final static String pass = "root";

    /**
     * 数据库名
     */
    final static String dbName = "resources";

    public static Connection conn = null;

    public static Connection getConnection() {
        try {
            String connUrl = String.format(
                    "jdbc:mysql://%s:%s/%s?useUnicode=true&amp;characterEncoding=UTF-8", host, port, dbName);
            Class.forName(dbDriver);
            if (null == conn) {
                conn = DriverManager.getConnection(connUrl, user, pass);
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Sorry,can't find the Driver!");
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     * 增删改
     *
     * @param sql
     * @return int
     */
    public static int executeNonQuery(String sql) throws SQLException {
        conn = getConnection();
        Statement stmt = conn.createStatement();
        int result = stmt.executeUpdate(sql);
        //conn.close();
        //stmt.close();
        return result;
    }

    /**
     * 查
     *
     * @param sql
     * @return ResultSet
     */
    public static ResultSet executeQuery(String sql) throws SQLException {
        conn = getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        //conn.close();
        //stmt.close();
        //rs.close();
        return rs;
    }

}

