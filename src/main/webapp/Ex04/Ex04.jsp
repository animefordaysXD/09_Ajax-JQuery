<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
width: 600px;margin-top: 50px; border-collapse: collapse;
}
table,th,td{
border: 1px solid green;
text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#b1").click(function() {
		$("#out").empty();
		var table = "<table>";
		table+="<thead><tr><th>이름</th><th>범위</th></tr></thead>";
		table+="<tbody>";
		
		//jQuery 에서 (xml, html, txt) 가져오는 메서드 : get()
		//jQuery에서 json 가져오는 메서드 : getJSON()
		//해당 프로젝트에 같은 이름이 있으면 구분하지 않음
		$.getJSON("data04.js",function(data){
			//JSON이 배열로 이루어져있음
			$.each(data, function(k,v) {
				table +="<tr>";
				table +="<td>" + v["name"] + "</td>";
				table +="<td>" + v["scope"] + "</td>";
				table +="</tr>";
			});
			table+="</tbody></table>";
			$("#out").append(table);
		});
	    
		
	});
});
</script>
</head>
<body>
  <div id="b1">가져오기</div>
  <div id="out"></div>

</body>
</html>