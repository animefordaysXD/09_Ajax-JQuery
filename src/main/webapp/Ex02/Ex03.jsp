<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XMLHttpRequest 객체 - 태그 XML 데이터</title>
</head>
<body>
    <script type="text/javascript">
        function createRequest() {
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

        var request = new createRequest();
        request.open("POST", "data03.xml", false);

        request.onreadystatechange = function() {
            if(request.readyState == 4 && request.status == 200){
                var data = request.responseXML;
                var product = data.getElementsByTagName("product");
                for (var i = 0; i < product.length; i++) {
                    // 속성 추출 : attributes[index].value
                    var p = product[i].childNodes[0].nodeValue;
                    var name = product[i].attributes[0].value;
                    var count = product[i].attributes[1].value;
                    document.body.innerHTML += "<h2><li>" + name + " - " + p + " : " + count + "</li></h2>";
                }
            }
        };
        request.send();
    </script>
</body>
</html>