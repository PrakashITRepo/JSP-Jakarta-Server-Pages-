<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %>
<html>
<body>
<h2>JSTL CORE c:functions tag ..</h2>

<c:set var="str" value="JSP : stands for    Jakarta Server Pages"/>
<%--
<c:if test="${fn:contains(str,'Jakarta')}">
Jakarta String found!
</c:if>

<c:out value="======================================="/><br/>
<c:if test="${fn:containsIgnoreCase(str,'Jakarta')}">
Jakarta String found!
</c:if><br/>
<c:if test="${fn:containsIgnoreCase(str,'jakaRta')}">
Jakarta String found!
</c:if>


ToLower : ${fn:toLowerCase(str)}<br/>
ToUpper : ${fn:toUpperCase(str)}

SubString : ${fn:substring(str,6,14)}
--%>
length before trim : ${fn:length(str)}
<c:set var="trimString" value="${fn:trim(str)}"/>
Trim : ${trimString}<br/>`
length after trim : ${fn:length(trimString)}
<br/><c:out value="======================================="/><br/>
</body>
</html>


