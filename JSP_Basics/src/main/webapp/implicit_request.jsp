<html>
<body>
<%
out.println("Hello Dear, "+request.getParameter("userName")+"<br/><br/>");
out.println("Protocol, "+request.getProtocol()+"<br/><br/>");
out.println("RequestURI, "+request.getRequestURI()+"<br/><br/>");
%>
</body>
</html>