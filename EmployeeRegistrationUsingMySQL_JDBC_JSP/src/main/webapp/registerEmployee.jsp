<%@ page import="com.prakashit.dao.*" %>
<html>
<div>
<body>
<h1>Submitted Employee Registration Details..</h1>

<jsp:useBean id="emp" class="com.prakashit.bean.Employee" scope="session"/>
<jsp:setProperty property="*" name="emp"/>

<%
EmployeeDAO dao = new EmployeeDAO();
int status = dao.registerEmployee(emp);
if(status > 0){
out.print("Employee Registration Successful...!!");
response.sendRedirect("employeeRegisterForm.jsp");
}

%>

</body>
</div>
</html>