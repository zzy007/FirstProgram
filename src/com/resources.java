package com;

import java.sql.*;

public class resources {

    /**
     * ���ݿ�����
     */
    final static String dbDriver = "com.mysql.jdbc.Driver";

    /**
     * ���ݿ����IP
     */
    final static String host = "10.10.133.219";

    /**
     * ���ݿ����˿�
     */
    final static String port = "3306";

    /**
     * ���ݿ������û���
     */
    final static String user = "root";


    /**
     * ���ݿ���������
     */
    final static String pass = "root";

    /**
     * ���ݿ���
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
     * ��ɾ��
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
     * ��
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

