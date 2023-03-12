<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="aDao" class="ohyuriDB.reviewDao" />

<%
	int num= Integer.parseInt(request.getParameter("num"));
	aDao.deleteAddr(num);
	response.sendRedirect("reviewList.jsp");
%>


</body>
</html>