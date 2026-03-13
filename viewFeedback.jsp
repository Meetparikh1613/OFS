<%@ page import="java.sql.*,util.DBConnection" %>

<html>
<body>

<h2>All Feedback</h2>

<table border="1">

<tr>
<th>ID</th>
<th>User ID</th>
<th>Message</th>
<th>Rating</th>
</tr>

<%

Connection con = DBConnection.getConnection();

Statement st = con.createStatement();

ResultSet rs = st.executeQuery("select * from feedback");

while(rs.next()){

%>

<tr>

<td><%=rs.getInt("feedback_id")%></td>
<td><%=rs.getInt("user_id")%></td>
<td><%=rs.getString("message")%></td>
<td><%=rs.getInt("rating")%></td>

</tr>

<%
}
%>

</table>

</body>
</html>