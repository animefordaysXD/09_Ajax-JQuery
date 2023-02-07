<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>오늘 날짜</h2>
<%
      Date now = new Date();
      String str = "오늘의 날짜는 2월 7일입니다";
      
      //now, str를 EL을 사용하기 위해서는 
      request.setAttribute("now",now);
      request.setAttribute("str",str);
%>
<%=now %><br>
<%=str %><br>
<hr>
${now }<br>
${str }<br>
<hr>

</body>
</html>