<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
body {text-align: center;} /* 텍스트가 가운데 정렬이 되도록 함 */
table {text-align: center;
		}
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
 
<table width="1000" border='1'  style="margin:auto" frame="void">
		<tr height="100">
			<td align="center" colspan="2">
			<jsp:include page="Top.jsp" />
		</tr>
		</table>
		<br>
		<h2 class="momo"> 리뷰 작성중... </h2>
		 <br>
	<form action="reviewProc.jsp" method="post">
	 <table border="1"  style="margin:auto" frame="void">
			<tr height="60" align="center">
				<td width="150"> 닉네임 </td>
				<td width="250"> <input type="text" name="name" > </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 성별 </td>
				<td width="250"> 
					<select name="gender">
						<option value="여자"> 여자 </option>
						<option value="남자"> 남자 </option>
					</select>
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 나이 </td>
				<td width="250"> 
					<select name="age">
						<option value="10대"> 10대 </option>
						<option value="20대">20대 </option>
						<option value="30대"> 30대 </option>
						<option value="40대"> 40대 </option>
						<option value="50대 이상"> 50대 이상 </option>
					</select> 
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> MBTI </td>
				<td width="250"> <input type="text" name="mbti" size=10> </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 작품 </td>
				<td width="250"> 
					<select name="movie">
						<option value="영화"> 영화</option>
						<option value="드라마"> 드라마</option>
						<option value="기타"> 기타 </option>
					</select> 
				</td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 제목 </td>
				<td width="250"> <input type="text" name="title"> </td>
			</tr>
			<tr height="60" align="center">
				<td width="150"> 평점(5점 만점) </td>
				<td width="250"> <input type="text" name="score" size=5> </td>
			</tr>
			<tr height="150" align="center">
				<td width="150"> 한줄평 </td>
				<td width="250"> <input type="text" name="review"  
				style="height:150px; "> </td>
			</tr>
			<tr height="60" align="center">
				<td colspan="2">
				<br/>
					<button type="submit" class="btn btn-outline-primary">등록</button>
					<button type="reset" class="btn btn-outline-dark"
					onclick="location.href='reviewList.jsp'">취소</button> </td>
				</tr>
	</table>
	</form>
	
	<table width="1000" border='1'  style="margin:auto" frame="void">
		<tr height="150">
			<td align="center" colspan="2">
			<jsp:include page="Bottom.jsp" />
		</tr> 
	</table>
	
</body>
</html>