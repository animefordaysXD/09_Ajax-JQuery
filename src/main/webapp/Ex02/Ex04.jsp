<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XMLHttpRequest 객체 - XML 태그 XML 데이터</title>
</head>
<body>
<script type="text/javascript">

function createRequest(){
	var req;
	try {
		req = new XMLHttpRequest();
	} catch (e) {
		try {
			req= new ActiveXObject("Microsoft.XMLHTTP");
		} catch (e) {
			req= new ActiveXObject("Msxml3.XMLHTTP");
		}
	}
	return req;
}

var request = new createRequest();
   request.open("POST","data04.js",false);
   request.onreadystatechange = function(){
	   if(request.readyState==4&&request.status==200){
		   //json 읽는 방법
		   //eval(내용)=> 내용을 자바스크립트 형태로 변경
		   //            내용을 자바스크립트 코드로 인식하게 하는 함수
		   var data = eval("("+request.responseText+")");
		   console.log(data);
		   var output = "";
		   for (var i = 0; i < data.length; i++) {
			   for ( var k in data[i]) {
				  document.body.innerHTML+= data[i][k]+"&nbsp&nbsp"
			}
			   document.body.innerHTML+="<br>";
			
		}
		
	   }
   };
   request.send();
</script>

</body>
</html>