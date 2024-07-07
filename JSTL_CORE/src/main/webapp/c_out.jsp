<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<body>
<h2>JSTL CORE c:out tag ..</h2>
<%= 10 > 20 %><br/>
<c:out value="${30 > 20}" /><br/>
<c:out value="${xyz}" default= "${10+20}"/><br/>
<c:out value="${3*15}" default= "${10+20}"/><br/>
<c:out value="Hi,we are discussing JSTL core <c:out> tag " escapeXml="false"/><br/>
<c:out value="Hi,we are discussing JSTL core <c:out> tag " /><br/>

</body>
</html>
