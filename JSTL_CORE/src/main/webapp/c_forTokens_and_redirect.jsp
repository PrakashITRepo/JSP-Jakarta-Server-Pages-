<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<body>
<h2>JSTL CORE c_forTokens and redirect tag ..</h2>

<%
String str= "Hello Everyone, Welcome to PrakashIT..";
request.setAttribute("str",str);
%>

<c:forTokens items="${str}" var= "s" delims=" ">
<c:out value="${s}"/><br/>
</c:forTokens>
<c:out value="==========================================="/>

<c:redirect url="https://www.youtube.com/@prakashitofficial"/>

</body>
</html>


