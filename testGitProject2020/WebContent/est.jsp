<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function(){
		$("button").click(function(){
			alert("kk")
			$.ajax({
				url:"localhost:9200/classes/class/1",
				method:"GET",
				datatype:"json",
				success:function(data){
					
					$("body").append(data["_source"]["title"]);
				}
			})
		});
	})
</script>
</head>
<body>
<button>요청</button>
</body>
</html>