<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XMLHttpRequest 객체</title>
</head>
<body>
  <script type="text/javascript">
    <%-- XMLHttpRequest 객체: Ajax를 실행할때 사용하는 객체  --%>
    // 1. 객체 생성
    var request = new XMLHttpRequest();
    
    //2. open("전송방식","경로","비동기여부")
    request.open("POST", "data.html",false);
    
    //3. send() : 실행
    request.send();
    
    //4. 화면에 출력 : innerHTML
   // document.body.innerHTML += request.responseText;//텍스트만 표시
   document.body.append(request.responseText); //그대로 가져옴 ---> 코드 그대로 가져옴 
    
  </script>
</body>
</html>