<%@page import="ohyuriDB.reviewDo"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {text-align: center;} /* 텍스트가 가운데 정렬이 되도록 함 */
table {text-align: center;
		}

</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
	<link rel="stylesheet" href="style.css">

</head>
<body>
<jsp:useBean id="aDo" class="ohyuriDB.reviewDo" >
	<jsp:setProperty name="aDo" property="*"/>
</jsp:useBean>
<jsp:useBean id="aDao" class="ohyuriDB.reviewDao" scope="application"></jsp:useBean>
<%
	request.setCharacterEncoding("UTF-8"); 
%>


<table width="1000" border='1'  style="margin:auto" frame="void">
		<tr height="100">
			<td align="center" colspan="2">
			<jsp:include page="Top.jsp" />
		</tr>
		</table>
		<br><br>
		<div class="divcon" >
			<table width="100%"  frame="void">
				<tr > 
			        <td colspan="3" class="sss" > 
					     <div class="btn-group" role="group" aria-label="Basic outlined example">
						  <button type="button" class="btn btn-outline-dark"
						   onclick="location.href='reviewSort_a.jsp'">평점 높은 순</button>
						  <button type="button" class="btn btn-outline-dark"
						  onclick="location.href='reviewSort_d.jsp'">평점 낮은 순</button>
						</div>
			        </td>  
			        
			        <td colspan="3" class="sss" > <br>
			        	<form  method="post" action="reviewSearch.jsp"  >
			            <div class="input-group mb-3" >
							 <input type="text" class="form-control" placeholder="MBTI를 검색해보세요!" 
							  aria-label="Recipient's username" aria-describedby="button-addon2" name="sch"
							  style="width:30px; " >
							  <button class="btn btn-outline-secondary" type="submit" id="button-addon2">검색</button>
							</div>	        
			            </form>           
			        </td>
			    </tr>
			</table>
		<table class="table table-hover" width="500" height="50" border="1" frame="void">
			  <thead>
			    <tr height="50" >
	
					<th width="50"scope="col"> 닉네임</th>
					<th width="30"scope="col"> 성별</th>
					<th width="30"scope="col"> 나이</th>
					<th width="30"scope="col"> MBTI </th>
					<th width="30"scope="col"> 종류 </th>
					<th width="70"scope="col"> 제목</th>
					<th width="30"scope="col"> 평점 </th>
					<th width="200"scope="col"> 한줄평 </th>
					<th width="100"scope="col">  </th>
					
			    </tr>
			  </thead>
			  <tbody>

<%
	ArrayList<reviewDo> aList = aDao.aReviewsort();
	for(int i=0; i< aList.size(); i++)
	{
		reviewDo ado = aList.get(i);
	

	
	
	%>
	<tr height="50">
	
		<td width="50" align="center"scope="row"> <%=ado.getName() %></td>
		<td width="30" align="center"scope="row"> <%=ado.getGender() %></td>
		<td width="30" align="center"scope="row"> <%=ado.getAge() %></td>
		<td width="30" align="center"scope="row"> <%=ado.getMbti() %></td>
		<td width="30" align="center"scope="row"> <%=ado.getMovie() %></td>
		<td width="70" align="center"scope="row"> <%=ado.getTitle() %></td>
		<td width="30" align="center"scope="row"> <%=ado.getScore() %></td>
		<td width="200" align="center"scope="row"> <%=ado.getReview() %></td>
		<td colspan="2">
			 <button 
				type="button" 
				class="btn btn-primary"
				onclick="location.href='reviewModify.jsp?num=<%= ado.getNum() %>'">
				수정하기
				</button>
				<button type="button" 
				class="btn btn-danger"
				onclick="location.href='reviewDelete.jsp?num=<%= ado.getNum() %>'">
				삭제하기
			</button>
		</td> 
	</tr>
		
	<% 	} %>
	
	  </tbody>
	</table>
	</div>

<table width="1000" border='1'  style="margin:auto" frame="void">
		<tr height="150">
			<td align="center" colspan="2">
			<jsp:include page="Bottom.jsp" />
		</tr> 
	</table>


</body>
</html>