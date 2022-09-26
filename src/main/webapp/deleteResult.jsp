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
				alert("삭제가 실행되었습니다.");
			</script>
	<%
		}else if(result.equals("N")){
	%>
			<script type="text/javascript">
				alert("삭제가 실행되지 않았습니다. 관리자에게 문의하세요.");
			</script>
	<%	
		}
	%>
	<script type="text/javascript">
		location.href="bookingList.do";
	</script>
</body>
</html>