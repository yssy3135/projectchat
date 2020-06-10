<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
					   var test=  ' <div class="show1" id="chatbox">'+
			           '<div class="row chat-window col-xs-5 col-md-3 pull-right" id="chat_window_1">'+
			               '<div class="col-xs-12 col-md-12">'+
			                 '<div class="panel panel-default">'+
			                      ' <div class="panel-heading top-bar">'+
			                           '<div class="col-md-7 col-xs-8" id="paneltit">'+
			                              ' <span id="panel-title"><span class="dot"></span >이름</span>'+
			                           '</div>'+  
			                          ' <div class="col-md-5 col-xs-5" style="text-align: right;" id="iconchat">'+
			                              ' <a href="#"><span id="minim_chat_window" class="glyphicon glyphicon-arrow-down icon_arrow-down"></span></a>'+
			                              ' <a href="#"><span id="plus_chat_window" class="glyphicon glyphicon-plus icon_plus" onclick="newopenForm()"></span></a>'+
			                              ' <a href="#"><span class="glyphicon glyphicon-remove icon_close_chat" data-id="chat_window_1"></span></a>'+
			                          ' </div>'+
			                      ' </div>'+
			                       <!-- 채팅화면 상단바  -->
			                     '  <div id="messagebody" class="panel-body msg_container_base">'+
			                       '<div class="row msg_container base_receive">'+
			   		            '<div class="col-xs-10 col-md-10">'+
			   					   '<div class="messages msg_receive">'+
			   				       '<p> '+JSON.parse(greeting.body).content+'</p>'+
			   		           	'<time datetime="2009-11-13T20:00">'+JSON.parse(greeting.body).id+' • Yesterday 10:05:41</time>'+
			   				       '</div>'+
			   					   '</div>'+
			   					   '</div>'+    
			                     '</div>'+
			                 '</div>'+
			                    
			                    <!-- 채팅화면 대화~~ end  -->
			                    
			                    '<div class="panel-footer">'+
			                    	'<div class="input-group">'+
			                    		'<input id="btn-input" type="text" class="form-control input-sm chat_input" placeholder="메세지를 입력해주세요..." required="required" />'+
			                           '<span class="input-group-btn">'+
			                           '<button class="btn btn-primary btn-sm" id="btn-chat">보내기</button>'+
			                          ' </span>'+
			                      ' </div>'+
			                   ' </div>'+
			                    <!-- 채팅화면 글쓰기 폼 end  -->
			              ' </div>'+
			          ' </div> '+
			      ' </div> ';
</body>
</html>