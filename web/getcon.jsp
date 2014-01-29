<%@page import="java.io.PrintWriter"%>
<%@ page import="java.sql.*" %>
<%!Statement st=null;
Connection cn=null;
%>
<%
    Class.forName("com.mysql.jdbc.Driver");
        Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Court","root","");
PrintWriter pw = response.getWriter();
//cn=DriverManager.getConnection(connectionURL, "root", "");
//st=cn.createStatement();
PreparedStatement psmnt = null;

%>