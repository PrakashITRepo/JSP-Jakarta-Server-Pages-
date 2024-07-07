<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<body>
<h2>JSTL CORE c:forEach tag ..</h2>

<%
String[] strArray = new String[]{"Alex","Smith","Bob","Martin","Joseph"};
request.setAttribute("strArray",strArray);
%>

<c:forEach var="str" items="${strArray}">
<c:out value="${str}"/><br/>

</c:forEach>
<c:out value="===================================="/><br/>
<c:forEach var="i" begin="1" end="10" >
<c:out value="${i}"/><br/>
</c:forEach>
</body>
</html>


