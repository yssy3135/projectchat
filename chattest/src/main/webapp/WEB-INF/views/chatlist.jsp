<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chatlist.jsp</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

	$(function(){
		
		$(".a").click(function(){
			
			var name =  this.textContent;
			
			
			console.log(this.textContent);
			
		
			document.location.href ="/chat/chatroom/room/"+name;
			
		});
		
	});

//	채팅방 리스트에서 리스트가 회원 이름 
// 클릭시 이름이 넘어가서 채팅 방이 있는지 확인 후 없으면 만들고 있으면 통신 

</script>
<body>
	
	
	<form action="#" id = "frm" name = "frm">
		<table>
			<tr>
				<td class = "a" name = "a">a</td>
			
			</tr>
			<tr>
				<td class = "a" name = "b">b</td>
				
			</tr>
			<tr>
				<td class = "a" name = "c">c</td>
				
			</tr>
			<tr>
				<td class = "a" name = "d">d</td>
				
			</tr>
			<tr >
				<td class = "a" name = "e">e</td>
				
		</tr>
		
		</table>
	
	
	
	</form>


</body>
</html>