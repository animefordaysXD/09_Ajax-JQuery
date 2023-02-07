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
   request.open("POST","data01.xml",false);
   request.onreadystatechange = function(){
	   if(request.readyState==4&&request.status==200){
		   //xml 태그 읽는 방법
		   //텍스트 가져오기
		   var data = request.responseXML;
		   
		   //document.body.innerHTML =data;
		   //테그 요소에 가져오기
		   var names = data.getElementsByTagName("name");
		   var prices = data.getElementsByTagName("price");
		   
		   //태그요소 안에 텍스트 추출 :
			   for (var i = 0; i < names.length; i++) {
				//글자 추출: childNodes[0].nodeValue
				var name = names[i].childNodes[0].nodeValue;
		        var price = prices[i].childNodes[0].nodeValue;
		   
		   document.body.innerHTML+="<h2><li>name= " + name +"</li></h2>";
		   document.body.innerHTML+="<h2><li>price= " + price +"</li></h2>";
					
			}
		   
		   
	   }
   };
   request.send();
</script>

</body>
</html>