<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h2 align="center">영화 예매 관리</h2>
	</header>
	<menu>
		<%@ include file="menu_file.jsp" %>
	</menu>
	<section>
		<h3 align="center">영화 정보 등록</h3>
		<div align="center">
		<form action="entryMovie.do" method="post">
			<table border="1">
				<tr>
					<th>영화번호</th>
					<td><input type="text" name="NO"/></td>
				</tr>
				<tr>
					<th>영화제목</th>
					<td><input type="text" name="TITLE"/></td>
				</tr>
				<tr>
					<th>상영일</th>
					<td><input type="date" name="DATE"/></td>
				</tr>
				<tr>
					<th>시작시간</th>
					<td><input type="text" name="START"/></td>
				</tr>
				<tr>
					<th>종료시간</th>
					<td><input type="text" name="END"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="영화 등록"/>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</section>
	<footer>
		<h3 align="center">Copyright 2022.</h3>
	</footer>
</body>
</html>