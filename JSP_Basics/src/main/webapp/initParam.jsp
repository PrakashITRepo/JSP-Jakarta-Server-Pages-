<%
String uName = request.getParameter("userName");
out.println("user :"+uName+"<br/>");
out.println("Init param : "+config.getInitParameter("pass"));
%>