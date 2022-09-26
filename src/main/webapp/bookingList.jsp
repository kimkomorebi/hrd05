<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, model.*" %>
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
		<div align="center">
		<%
			ArrayList<Booking> list = (ArrayList<Booking>)request.getAttribute("BOOKING");
		%>
		<h3 align="center">영화 예매 정보</h3>
		<table border="1">
			<tr>
				<th>예매자</th>
				<th>연락처</th>
				<th>영화제목</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>예약매수</th>
				<th>예약일</th>
				<th>비고</th>
			</tr>
		<%
			for(Booking b : list){
		%>
			<form action="bookingDelete.do">
				<tr>
					<td><%= b.getName() %></td>
					<td><%= b.getPhone() %></td>
					<td><%= b.getTitle() %></td>
					<td><%= b.getStrat_hour() %></td>
					<td><%= b.getEnd_hour() %></td>
					<td><%= b.getNum() %></td>
					<td><%= b.getDate() %></td>
					<td>
						<input type="hidden" name="ID" value="<%= b.getId() %>"/>
						<input type="hidden" name="NO" value="<%= b.getNo()%>"/>
						<input type="submit" value="삭제"/>
					</td>
				</tr>
			</form>
		<%
			}
		%>
		</table><br/>
		<input type="button" value="영화 등록" onClick="entryMovie()"/>
		<input type="button" value="고객 등록" onClick="entryUser()"/>
		<input type="button" value="예매하기" onClick="entryBooking()"/>
		</div>
	</section>
	<footer>
		<h3 align="center">Copyright 2022.</h3>
	</footer>
	<script type="text/javascript">
		function entryMovie(){
			location.href="entryMovie.jsp";
		}
/* 		function entryUser(){
			location.href="";
		}
		function entryBooking)_{
			location.href="";
		} */
	</script>
</body>
</html>