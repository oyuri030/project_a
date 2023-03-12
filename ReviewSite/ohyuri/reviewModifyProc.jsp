<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<% 
	request.setCharacterEncoding("utf-8");
%>

 
<jsp:useBean id="aDo" class="ohyuriDB.reviewDo"></jsp:useBean>
<jsp:setProperty property="*" name="aDo"/>

<jsp:useBean id="aDao" class="ohyuriDB.reviewDao"></jsp:useBean>



<%
	aDao.modifyAddr(aDo); 
	//수정된 데이터 저장
	response.sendRedirect("reviewList.jsp"); 
	//수정된 데이터 확인
%>

</body>
</html>