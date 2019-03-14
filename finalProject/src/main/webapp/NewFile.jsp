<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#b1").click(function(){
	    var d = $("#form").serialize();
		$.ajax({
			url: "selectLo",
			data: d,
			datatype: "text",
			success: function(result) {
			 	$("h1").html(result);
			 	
			}	
			});
		});
	
	$("#b2").click(function(){
		$.ajax({
 			url: "selectAllHP",
			
			datatype: "text",
			success: function(result) {
				$("h1").html(result);
	
			}
 		});
		
		});
	$("#b3").click(function(){
		
		$.ajax({
			url: "resources/json/geongi.json",

			datatype: "json",
			
			success: function(result) {
			 		console.log(result);
			 	
			 	
			 	
			 	    /* JSONArray array = new JSONArray(result); //JSONArray형식으로 파싱하기 위해 새로 선언해주며 eventArray를 집어 넣어준다.
			 	    list_cnt = array.length(); //Json 배열 내 JSON 데이터 개수를 가져옴
			 	 
			 	    //key의 value를 가져와 저장하기 위한 배열을 생성한다
			 	    id = new String[list_cnt]; //
			 	    name = new String[list_cnt]; //
			 	    location = new String[list_cnt]; //
			 	 
			 	    for (var i = 0; i < list_cnt; i++) { //JSONArray 내 json 개수만큼 for문 동작
			 	 
			 	        JSONObject jsonObject = array.getJSONObject(i); //i번째 Json데이터를 가져옴
			 	        id[i] = jsonObject.getString("id");  //descripton 값을 배열에 저장
			 	        name[i] = jsonObject.getString("nm");  //link 값을 배열에 저장
			 	        location[i] = jsonObject.getString("arr_old");  //imageurl 값을 배열에 저장
			 	       	$("#id").val(id[i]);
				 		$("#name").val(nm[i]);
				 		$("#location").val(location[i]);
				 /* 
				 		$("#lat").val(hp.xcode);
				 		$("#lng").val(hp.ycode); 
				 		
			 	    }*/			
					
			 	 $.each(result, function(index, hp){
			 		
		 			$("#name").val(hp.BIZPLC_NM);
		 			$("#location").val(hp.REFINE_ROADNM_ADDR);
		 			$("#state").val(hp.BSN_STATE_NM);
		 			$("#lat").val(hp.REFINE_WGS84_LAT);
		 			$("#lng").val(hp.REFINE_WGS84_LOGT); 
		
		 		
			 		
		 			  var inputData = $("#form").serialize();
			 		 $.ajax({
			 			url: "insertHP",
						datatype: "POST",
						data: inputData,
						success: function(result) {
							
							$("h1").text("DB 넣기성공")
						}
			 		}) 
				 }); 
			 		}
			
			});
		});
	
	});

</script>
</head>
<body>
<h1></h1>
<div>
	<form id="form">
	name:<input type="text" id="name" name="name"><br>	
	location:<input type="text" id="location" name="location"><br>	
	state:<input type="text" id="state" name="state"><br>	
	lat:<input type="text" id="lat" name="lat"><br>	
	lng:<input type="text" id="lng" name="lng"><br>	
	
	</form>
	<button id = "b1">검색</button>
	<button id = "b2">전체검색</button>
	<button id = "b3">저장</button>
	<ul></ul>

</div> <!-- 결과를 담을 위치 -->
</body>
</html>