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
		<h2 align="center">��ȭ ���� ����</h2>
	</header>
	<menu>
		<%@ include file="menu_file.jsp" %>
	</menu>
	<section>
		<div align="center">
		<%
			ArrayList<Booking> list = (ArrayList<Booking>)request.getAttribute("BOOKING");
		%>
		<h3 align="center">��ȭ ���� ����</h3>
		<table border="1">
			<tr>
				<th>������</th>
				<th>����ó</th>
				<th>��ȭ����</th>
				<th>���۽ð�</th>
				<th>����ð�</th>
				<th>����ż�</th>
				<th>������</th>
				<th>���</th>
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
						<input type="submit" value="����"/>
					</td>
				</tr>
			</form>
		<%
			}
		%>
		</table><br/>
		<input type="button" value="��ȭ ���" onClick="entryMovie()"/>
		<input type="button" value="�� ���" onClick="entryUser()"/>
		<input type="button" value="�����ϱ�" onClick="entryBooking()"/>
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