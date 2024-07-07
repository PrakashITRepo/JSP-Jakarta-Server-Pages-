<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<body>
<h2>JSTL CORE c:choose c:when and c:otherwise tag ..</h2>

<b> Find the no is even or odd..</b><br/>

<c:set var="no" value="101"/>

<c:choose>

<c:when test="${no%2==0}">
<c:out value="${no} is even number.."/>
</c:when>

<c:otherwise>
<c:out value="${no} is odd number.."/>
</c:otherwise>

</c:choose>

</body>
</html>


