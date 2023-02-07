<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	$("#b1").click(function() {
		$("#res1").load("data01.jsp");
	});
	$("#b2").click(function() {
		$("#res2").load("data02.jsp");
	});
	$("#menu").on("mouseover",function(){
		$("#output").load("data03.jsp");
	});
	$("#menu").on("mouseout",function(){
		$("#output").empty();
	});
});
</script>
<style type="text/css">
div{width: 80%;height: 50% }

</style>
</head>
<body>

<div>
  <h2>iFrame 사용</h2>
  <iframe src="data01.jsp"></iframe>
</div>
<hr>

<div>
<h2>include 사용</h2>
 <jsp:include page="data01.jsp"/>
</div>
<hr>

<div>
<h2>include jQuery</h2>
<p id="res1"></p>
<button id="b1">가져오기</button>
</div>
<hr>

<div>
<h2>include jQuery2</h2>
<p id="res2"></p>
<button id="b2">가져오기</button>
</div>
<hr>

<div>
<p id="menu">메뉴 보기</p>
<span id="output"></span>
</div>
<hr>


</body>
</html>