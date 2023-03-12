<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body {text-align: center;} /* 텍스트가 가운데 정렬이 되도록 함 */
table {text-align: center;}

</style>
</head>
<body>

<%
 	request.setCharacterEncoding("utf-8"); 
	String center = request.getParameter("center");

	if(center ==null)
	{
		center = "center.jsp";
	}
%>
<table width="1000" border='1'  style="margin:auto" frame="void">
	<tr height="100">
		<td align="center" colspan="2">
		<jsp:include page="Top.jsp" />
	</tr> 
	<tr height="500"  >
		<td align="center" >
		<jsp:include page="<%=center %>" />
		</td>
	</tr>
	<tr height="150">
		<td align="center" colspan="2">
		<jsp:include page="Bottom.jsp" />
	</tr> 
</table>

</body>
</html>