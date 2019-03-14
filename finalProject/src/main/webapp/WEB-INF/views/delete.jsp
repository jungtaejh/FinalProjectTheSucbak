<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
	
	 $.ajax({
		    
	        url     :"list",
	        cache   : false,
	        async   : true,
	        type    :"POST", 
	        dataType: "json",
	        success : function(obj) {
	        	for(var i = 0; i < obj.length; i++) {
	        			var bno = obj[i].bno;
	        			var title = obj[i].title;
	        			var writer = obj[i].writer;
	        			console.log(obj[i].title);
	        			
	        			
	        			var ajaxTitle = decodeURIComponent(title);
	        			
	        			
	        		$("#table").after("<tr><td>" + obj[i].bno + "</td><td>" 
	        				+ decodeURIComponent(obj[i].title) + 
	        				"</td><td><a href='select.do?writer=" + encodeURIComponent(obj[i].writer) + "'>" + decodeURIComponent(obj[i].writer) + "</a></td></tr>");
	        		
	        		
	        	}
	        	
	        }
	     });
});




</script>

</head>
<body>

<h2>게시글 목록</h2>
<form action="write.jsp">
<input type="submit" value="글쓰기">
</form>
<table border="1" width="600px">
	<tr id="table">
		<th>번호</th>
		<th>제목</th>
		<th>이름</th>
	</tr>

</table>

</body>
</html>