<%@ page import="javax.naming.Context" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSetMetaData" %><%--
  Created by IntelliJ IDEA.
  User: cby
  Date: 2017/11/9
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h1>Connection status</h1>
<%
  try {

    Context initCtx = new javax.naming.InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource) envCtx.lookup("jdbc/ConnectionPool");
    Connection cn=ds.getConnection();
    String sql="SELECT * FROM Rawscores;";
    ResultSet rs=cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE).executeQuery(sql);
    ResultSetMetaData rsmd = rs.getMetaData();
    System.out.println("querying SELECT * FROM XXX");
    int columnsNumber = rsmd.getColumnCount();
    while (rs.next()) {
      for (int i = 1; i <= columnsNumber; i++) {
        if (i > 1) System.out.print(",  ");
        String columnValue = rs.getString(i);
        System.out.print(columnValue + " " + rsmd.getColumnName(i));
      }
    }
      System.out.println("");
      }catch(Exception ex) {
      System.out.println("fail.start");
      ex.printStackTrace();
    System.out.println("fail.end");

  }
%>
  </body>
</html>
