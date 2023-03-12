<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-color:Snow;
}

</style>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
		rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
		crossorigin="anonymous">
		
	<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="header">
	<div class="section">
		<div class="logo">
			<img src="img/LOGO (4).png"  alt="..."height="50" width="50">
			</div>
			

			<div class="nav">

				<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="pills-home-tab" 
					    onclick="location.href='reviewMain.jsp'">Home</button>
					  </li>
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="pills-profile-tab" 
					    data-bs-toggle="pill" data-bs-target="#pills-profile" 
					    type="button" role="tab" aria-controls="pills-profile" 
					    aria-selected="false"onclick="location.href='reviewList.jsp'">리뷰</button>
					  </li>
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="pills-contact-tab" 
					    data-bs-toggle="pill" data-bs-target="#pills-contact" 
					    type="button" role="tab" aria-controls="pills-contact" 
					    aria-selected="false"onclick="location.href='reviewForm.jsp'">작성</button>
					  </li>
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="pills-contact-tab" 
					    data-bs-toggle="pill" data-bs-target="#pills-contact" 
					    type="button" role="tab" aria-controls="pills-contact" 
					    aria-selected="false">영화</button>
					  </li>
					  <li class="nav-item" role="presentation">
					    <button class="nav-link" id="pills-contact-tab" 
					    data-bs-toggle="pill" data-bs-target="#pills-contact" 
					    type="button" role="tab" aria-controls="pills-contact" 
					    aria-selected="false">드라마</button>
					  </li>
				</ul>
			</div>

	</div>
</div>




</body>
</html>