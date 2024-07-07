<html>
<body>
<h2>Implicit objects...</h2>
<%
        out.println("Date : "+java.util.Calendar.getInstance().getTime()+"<br/><br/>");
        out.println("TimeZone : "+java.util.Calendar.getInstance().getTimeZone());
        out.println("Hi..");

%>
</body>
</html>