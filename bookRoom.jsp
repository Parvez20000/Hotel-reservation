<%-- 
    Document   : bookRoom
    Created on : 18 Jul, 2025, 12:04:04 PM
    Author     : SHADAB
--%>
<%@ page import="java.sql.*" %>
<%@ page import="dbconnect.*" %>

<%
    String email = request.getParameter("id");
String name = request.getParameter("name");
//String email = request.getParameter("email");
String room_type = request.getParameter("room_type");
String check_in = request.getParameter("check_in");
String check_out = request.getParameter("check_out");

Connection con = DBConnect.getConnection();
PreparedStatement ps = con.prepareStatement("INSERT INTO hotel (id,name, room_type, check_in, check_out) VALUES(?, ?, ?, ?, ?)");
ps.setString(1, name);
ps.setString(2, email);
ps.setString(3, room_type);
ps.setString(4, check_in);
ps.setString(5, check_out);
int i = ps.executeUpdate();

if(i > 0){
    response.sendRedirect("success.jsp");
} else {
    out.println("Booking Failed!");
}
%>
