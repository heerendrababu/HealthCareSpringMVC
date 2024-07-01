<%@page import="com.shivintech.model.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Details</title>
<style>
div {
	margin-left: 550px;
}
</style>
</head>
<body>
<div>
<h1>Doctors Details</h1>
<form action="bookAppointment" method="post">
    Select Date: <input type="date" name="appointmentDate" required /><br><br>
    <table border="2">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Profession</th>
            <th>Mobile</th>
            <th>Action</th>
        </tr>
        <!-- Get the attribute and cast to ArrayList of Doctor -->
        <%
            ArrayList<Doctor> al = (ArrayList<Doctor>) request.getAttribute("doctorlist");
            if (al != null) {
                for (Doctor d : al) {
        %>
            <tr>
                <td><%= d.getId() %></td>
                <td><%= d.getName() %></td>
                <td><%= d.getProfession() %></td>
                <td><%= d.getMobile() %></td>
                <td>
                    <input type="hidden" name="doctorId" value="<%= d.getId() %>" />
                    <input type="submit" name="book" value="Book" />
                </td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="5 ">No doctors available</td>
            </tr>
        <%
            }
        %>
    </table>
</form>
</div>
</body>
</html>
