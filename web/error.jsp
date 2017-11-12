<%--
  Created by IntelliJ IDEA.
  User: youzhedou
  Date: 11/12/17
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    <link href="CSS/style.css" rel="stylesheet" type="text/css">
</head>
    <body>
        <span class="zczi">OOPS！
            The following error occurs:
            <%=
                exception.getMessage()
            %>
        </span>
    </body>
</html>