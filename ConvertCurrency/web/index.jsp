<%--
  Created by IntelliJ IDEA.
  User: datquocngo
  Date: 27/11/2018
  Time: 09:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Currency Converter</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Currency Converter</h2>
<form action="index.jsp" method="post">
  <label>Rate: </label><br/>
  <input type="text" name="rate" placeholder="RATE" value="22000"/><br/>
  <label>USD: </label><br/>
  <%
    float vnd;
    vnd = Integer.parseInt(request.getParameter("rate"));
    float usd = (float)vnd/22000;
    String value = String.valueOf(usd);
  %>
  <input type="text" name="usd" placeholder="USD" value="<%   out.print(value); %>"/><br/>
  <input type = "submit" id = "submit" value = "Converter"/>
</form>
</body>
</html>