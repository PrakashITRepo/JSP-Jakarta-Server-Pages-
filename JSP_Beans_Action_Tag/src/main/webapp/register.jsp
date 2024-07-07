<html>
<body>

<jsp:useBean id="emp" class="com.prakashit.Employee" scope="request"/>
<jsp:setProperty property="*" name="emp"/>
<jsp:forward page="display.jsp"/>
<%--
Registered Employee Details :
EmpId : <jsp:getProperty property="empId" name="emp"/><br/>
EmpName: <jsp:getProperty property="empName" name="emp"/><br/>
EmpAddress: <jsp:getProperty property="empAddress" name="emp"/><br/>
--%>

</body>
</html>
