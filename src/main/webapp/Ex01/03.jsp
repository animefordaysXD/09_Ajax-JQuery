<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
  <%-- 
  XMLHttpRequest 객체를 버전이 낮은 브라우저는 가지고 있지 않다. 
  그러나, XMLHttpRequest 객체와 비슷한 ActiveXObject 객체가 존재함 
  --%>
  function createRequest(){
	  var req;
	  try {
		req = new XMLHttpRequest();
		
	} catch (e) {
		try {
			req = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (e) {
			req = new ActiveXObject("Msxml3.XMLHTTP");
		}
	}
	return req;
  }
  // 1. 객체 생성
  var request = new createRequest();
  
  //2. open("전송방식","경로","비동기여부")
  request.open("POST", "data.html",false);
  
  
  
  //3.검사를 해서 성공하면 화면 출력 
  request.onreadystatechange = function() {
	//request.readyState : 데이터의 배달 결과 상태 표시
	//0=> 객체 생성, 1=> open 안함, 2=> send 안함
	//3=> 데이터 일부만 받음, 4=> 전체 데이터 받음
	
	//request.status=>200(성공),4XX(클라이언트 오류),5XX(서버 오류)
	if(request.readyState==4&&request.status == 200){
		document.body.innerHTML += request.responseText;
	}
};
  
  //4. send() : 실행
  request.send();
  
  // 화면에 출력 : innerHTML
 // document.body.innerHTML += request.responseText;//텍스트만 표시
 
  
  </script>


</body>
</html>