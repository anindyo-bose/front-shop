<%--
    Document   : nSearch
    Created on : Jan 16, 2017, 11:14:57 PM
    Author     : Mr.BOSS
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Name:New Chandan Musicals</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <center>
      <br>
      <% ResultSet rs=null;

            String name;

            String url = "jdbc:derby://localhost:1527/Shop";
            String username="bose";
            String password="bose";
            Connection con = DriverManager.getConnection (url,username,password);
            Statement s1 = con.createStatement();

            name=request.getParameter("naam");

            if(name!=null){
            rs=s1.executeQuery("select * from products where pname='"+name+"'");}

           %>

           <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>Type</TH>
                <TH>Name</TH>
                <TH>Purchased Price</TH>
                <TH>Selling Price</TH>
                <TH>Marketed From</TH>
                <TH>Product Make</TH>
                <TH>Product Quantity</TH>
            </TR>
         <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(1) %></td>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getString(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getString(8) %></TD>
            </TR>
            <% } %>
        </TABLE>

    </center>
    </body>
</html>
