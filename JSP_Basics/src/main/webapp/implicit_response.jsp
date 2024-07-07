<%
String req = request.getParameter("searchQuery");
response.sendRedirect("https://www.youtube.com/results?search_query="+req);
%>