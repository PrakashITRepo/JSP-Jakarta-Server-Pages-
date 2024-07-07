<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
<html>
<body>
<h2>JSTL CORE c:if tag ..</h2>

<c:set var="no" value="10"/>
<c:if test="${no%2==0}" var="isEven" scope="session">

The no is even : <c:out value="${isEven}"/>

</c:if>
<br/>
<c:set var="str" value="Hello dear, how are you?"/>
<c:if test="${fn:contains(str,'how')}">
<c:out value="found..."/>
</c:if>

</body>
</html>


