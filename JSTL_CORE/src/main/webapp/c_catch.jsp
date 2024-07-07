<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<body>
<h2>JSTL CORE c:catch tag ..</h2>

<c:catch var="exceptionCaught">
<% int x = 10/0; %>
</c:catch>

<c:if test="${exceptionCaught !=null}" >
Exception is : ${exceptionCaught} <br/>
Exception message is : ${exceptionCaught.message} <br/>
</c:if>

</body>
</html>
