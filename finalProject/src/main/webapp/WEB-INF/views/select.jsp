<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
	
$(function() {
	
	var title = decodeURIComponent($("#title").val());
	var content = decodeURIComponent($("#content").val());
	var writer = decodeURIComponent($("#writer").val());
	
	$("#title1").text(title);
	$("#content1").text(content);
	$("#writer1").text(writer);
	
		
         
});   //   jquery


$(function() {
	$("#btnDelete").click(function() {
		if(confirm("삭제하시겠습니까?")) {
			var writer = encodeURIComponent($("#writer").val());
			$("#writer1").text(writer);
			
			document.form1.action = "delete.jsp";
			document.form1.submit();
		}
	});
	
	$("#btnUpdate").click(function() {
		var title = decodeURIComponent($("#title").val());
		var content = decodeURIComponent($("#content").val());
		var writer = decodeURIComponent($("#writer").val());
		if(title == "") {
			alert("제목을 입력하세요");
			document.form1.title.focus();
			return;
		}
		if(content == "") {
			alert("내용을 입력하세요");
			document.form1.content.focus();
			return;
		}
		if(writer == "") {
			alert("이름을 입력하세요");
			document.form1.writer.focus();
			return;
		}
		document.form1.action = "update.jsp";
		document.form1.submit();
		
	});
	
});
</script>
</head>
<body>
	<c:set var="boardDTO" value="${boardDTO}"></c:set>
		<input type="hidden" id="title" value="${boardDTO.title}">
		<input type="hidden" id="content" value="${boardDTO.content}">
		<input type="hidden" id="writer" value="${boardDTO.writer}">
	
		<table border="2">
			<tr>
				<td>제목</td>
				<td>내용</td>
				<td>이름</td>
			</tr>
		<tr>
			<td><h5 id="title1"></h5></td>
			<td><h5 id="content1"></h5></td>
			<td><h5 id="writer1"></h5></td>
		</tr>
		</table>
		<form name ="form1" method="post">
	<button type="button" id="btnUpdate">수정</button>
	<button type="button" id="btnDelete">삭제</button>
	
	
</form>
</body>
</html>