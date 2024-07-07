<%@ page import="com.prakashit.Calculator" %>
<%@ page contentType="application/msword" %>
<%@ page errorPage="error.jsp" %>

<html>
<body>
<h2>Calculator App..</h2>
Sum of no 10 and 20 :
<%
Calculator calc = new Calculator();
int res = calc.calculate(10,20);
%>

<%= res
%>
<%= 10/0 %>
</body>
</html>
