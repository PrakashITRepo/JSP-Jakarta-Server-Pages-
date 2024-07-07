<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<body>
<h2>JSTL CORE  c:set and c:remove tag..</h2>

<c:set var="rollNo" value="10" scope="session"/>
<%-- <c:set target="name" value="Smith" property=""/> or <jsp:setProperty> --%>
Roll no : ${rollNo}<br/>

<c:remove var="rollNo"/>
Roll no  : ${rollNo}
</body>
</html>
