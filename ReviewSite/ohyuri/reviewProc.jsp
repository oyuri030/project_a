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
td,th{border:1px #87CEEB solid ; }
.momo { font-family: "cafe24";
text-align: center;
		}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
	<link rel="stylesheet" href="style.css">
	
</head>
<body>

<% 	request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="aDo" class="ohyuriDB.reviewDo" >
	<jsp:setProperty name="aDo" property="*" />
	</jsp:useBean>

<jsp:useBean id="aDao" class="ohyuriDB.reviewDao" scope="application">
</jsp:useBean>
<%

	
	// 입력된 값을 저장함 (addrBean 이용)
	aDao.insertAddr(aDo);
%>




<table width="1000" border='1'  style="margin:auto" frame="void">
		<tr height="100">
			<td align="center" colspan="2">
			<jsp:include page="Top.jsp" />
		</tr>
		</table>
		<br>
		<h2 class="momo"> 리뷰 등록 완료! </h2>
		 <br>
	 	<table border="1"  style="margin:auto" frame="void">
			
			<tr height="60" align="center">
				<td width="150"> 성별 </td>
				<td width="250"> <%= aDo.getGender()%> </td>
			</tr>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 나이 </td>
				<td width="250"> <%= aDo.getAge()%> </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> MBTI </td>
				<td width="250">  <%= aDo.getMbti()%> </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 작품 </td>
				<td width="250">  <%= aDo.getMovie()%> </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 제목 </td>
				<td width="250"> <%= aDo.getTitle()%> </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 평점(5점 만점) </td>
				<td width="250"> <%= aDo.getScore()%> </td>
			</tr>
			<tr height="100" align="center">
				<td width="150"> 한줄평 </td>
				<td width="250"> <%= aDo.getReview()%> </td>
			</tr>

			<tr height="60" align="center">
				<td colspan="2">
				<br/>
					<button type="submit" class="btn btn-outline-primary"
					onClick="location.href='reviewMain.jsp'">메인으로가기</button>
					<button type="reset" class="btn btn-outline-primary"
					onClick="location.href='reviewList.jsp'">모든리뷰보기</button> </td>
				</tr>
		</table>
		
		<table width="1000" border='1'  style="margin:auto" frame="void">
			<tr height="150">
				<td align="center" colspan="2">
				<jsp:include page="Bottom.jsp" />
			</tr> 
		</table>
	
	


	


</body>
</html>