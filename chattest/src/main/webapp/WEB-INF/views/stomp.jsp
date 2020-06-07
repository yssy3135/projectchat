<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.4.0/sockjs.min.js"></script>
<!-- <script src="https://raw.githubusercontent.com/stomp-js/stomp-websocket/master/lib/stomp.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript">


var stompClient = null;

function setConnected(connected) {
    $("#connect").prop("disabled", connected);
    $("#disconnect").prop("disabled", !connected);
    if (connected) {
        $("#conversation").show();
    }
    else {
        $("#conversation").hide();
    }
    $("#greetings").html("");
}

function connect() {
    var socket = new SockJS('/gs-guide-websocket');
    console.log(socket);
    console.log("coon : ${roomId}");
    
     stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
    	
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/queue/${roomId}', function (greeting) {
            showGreeting(JSON.parse(greeting.body).content,JSON.parse(greeting.body).sendTime);
        });
        
        
    //stompClient.send("/app/welcome", {}, JSON.stringify( {'name': $("#name").val() }));
      stompClient.send("/app/welcome", {}, JSON.stringify( {'name': $("#name").val() }));
    
    }); 
    
    
}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function sendName() {
	var name =  $("#name").val();
	var contents =  $("#contents").val();
	var roomid =  "${roomId}";
	
	var message = {
			'name': name,
			 'contents' : contents,
			 'roomid' : roomid
	};
	
	
	
	console.log(JSON.stringify(message));
	
	
	
    stompClient.send("/app/welcome/"+roomid, {}, JSON.stringify(message));
    
    
 
    console.log("세션${id}" );
    //세선 가져오는걸 id로		
   
   
    //여기서'name'이라는 변수에 name을 받아서 전송
    
    //세션을 엮어서 아이디로 출력
	/* {'contents': $("#contents").val() } */
}

function showGreeting(message,time) {
    $("#greetings").append("<tr><td>" + message +"&nbsp&nbsp&nbsp</td><td style='font-size : 5px'>"+time+"</td ></tr>");
   // $("#greetingstime").append("<td style='font-size : 5px'>"+time+"</td >");
}


function showroom(room) {
    $("#rooms").append("<tr><td>" + room + "</td></tr>");
}

$(function () {
    $("form").on('submit', function (e) {
        e.preventDefault();
    });
    $( "#connect" ).click(function() { connect(); });
    $( "#disconnect" ).click(function() { disconnect(); });
    $( "#send" ).click(function() { sendName(); });
});


</script>

<head>
    <title>Hello WebSocket</title>
   
</head>
<body>
<noscript><h2 style="color: #ff0000">Seems your browser doesn't support Javascript! Websocket relies on Javascript being
    enabled. Please enable
    Javascript and reload this page!</h2></noscript>
    
    
<div id="main-content" class="container">
    <div class="row">
        <div class="col-md-6">
            <form class="form-inline">
                <div class="form-group">
                    <label for="connect">WebSocket connection:</label>
                    <button id="connect" class="btn btn-default" type="submit">Connect</button>
                    <button id="disconnect" class="btn btn-default" type="submit" disabled="disabled">Disconnect
                    </button>
                </div>
            </form>
        </div>
        <div class="col-md-6">
            <form class="form-inline">
                <div class="form-group">
                    <label for="name">What is your name?</label>
                    <input type="text" id="name" class="form-control" placeholder="Your name here...">
                </div>
                    <input type="text" id="contents" class="form-control" placeholder="Your contents here...">
                <button id="send" class="btn btn-default" type="submit">Send</button>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <table id="conversation" class="table table-striped">
                <thead>
                <tr>
                    <th>Greetings</th>
                </tr>
                </thead>
                <tbody id="rooms">
                </tbody>
                
                <tbody id="greetings">
                </tbody>

                
                
            </table>
        </div>
    </div>
</div>
</body>
</html>