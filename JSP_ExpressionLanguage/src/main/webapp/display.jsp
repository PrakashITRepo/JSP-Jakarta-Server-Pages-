<html>
<body>
<h2>Expression Language data display..</h2>

<b><%= "Param Data" %><b/><br/>

EmpId : ${param.empId} <br/>
EmpName : ${param.empName} <br/>

<br/><%= "====================================" %><br/>


<b><%= "Request Scope Data" %><b/><br/>
<%
request.setAttribute("id", request.getParameter("empId"));
request.setAttribute("name", request.getParameter("empName"));
%>
<br/>
EmpId: ${requestScope.id}<br/>
EmpName: ${requestScope.name}

<br/><%= "====================================" %><br/>

<b>Session scope data :</b><br/>
<%
session.setAttribute("eId",request.getParameter("empId"));
session.setAttribute("eName",request.getParameter("empName"));
%>

EmpId :  ${sessionScope.eId}  <br/>
EmpName :  ${sessionScope.eName}  <br/>
<br/><%= "======================================================" %><br/>

</body>
</html>
