<html>
<body>
<h2>Hello,Welcome to JSP Scripting elements Tag:</h2>
1.Scriptlet Tag:
Today Date:
<br/><% out.print(new java.util.Date()); %><br/><br/>

2.Expression Tag:
Today Date:
<br/><%= new java.util.Date() %><br/><br/>

3.Declaration Tag:
Today Date:
<br/>
<%!  java.util.Date display(){
return new java.util.Date();
}
%>
<%= display() %>

</body>
</html>