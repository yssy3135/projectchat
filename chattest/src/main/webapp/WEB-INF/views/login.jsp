<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
	
	
	
	$("#btn").click(function(){
		
		console.log($("#id").val());
		
		document.frm.action = "/chat/chat";
		document.frm.submit();
		
	});
	
	
});



</script>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="#" name = "frm">
	<table>
		<tr>
			<th>아이디</th>
			<th>
				<input type="text" name="id" id="id" />
			</th>
		</tr>
		<tr>
		
			<input type="button" value="로그인"  id="btn" />
		</tr>
	</table>
	</form>


</body>
</html>