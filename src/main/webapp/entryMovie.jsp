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
		<h2 align="center">��ȭ ���� ����</h2>
	</header>
	<menu>
		<%@ include file="menu_file.jsp" %>
	</menu>
	<section>
		<h3 align="center">��ȭ ���� ���</h3>
		<div align="center">
		<form action="entryMovie.do" method="post">
			<table border="1">
				<tr>
					<th>��ȭ��ȣ</th>
					<td><input type="text" name="NO"/></td>
				</tr>
				<tr>
					<th>��ȭ����</th>
					<td><input type="text" name="TITLE"/></td>
				</tr>
				<tr>
					<th>����</th>
					<td><input type="date" name="DATE"/></td>
				</tr>
				<tr>
					<th>���۽ð�</th>
					<td><input type="text" name="START"/></td>
				</tr>
				<tr>
					<th>����ð�</th>
					<td><input type="text" name="END"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="��ȭ ���"/>
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