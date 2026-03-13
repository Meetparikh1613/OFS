<html>
<body>

<h2>Submit Feedback</h2>

<form action="FeedbackServlet" method="post">

Message:
<textarea name="message"></textarea><br><br>

Rating:
<input type="number" name="rating" min="1" max="5"><br><br>

<input type="submit" value="Submit Feedback">

</form>

<a href="LogoutServlet">Logout</a>

</body>
</html>