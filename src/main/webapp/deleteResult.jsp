<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String result = request.getParameter("R");
		if(result.equals("Y")){
	%>
			<script type="text/javascript">
				alert("������ ����Ǿ����ϴ�.");
			</script>
	<%
		}else if(result.equals("N")){
	%>
			<script type="text/javascript">
				alert("������ ������� �ʾҽ��ϴ�. �����ڿ��� �����ϼ���.");
			</script>
	<%	
		}
	%>
	<script type="text/javascript">
		location.href="bookingList.do";
	</script>
</body>
</html>