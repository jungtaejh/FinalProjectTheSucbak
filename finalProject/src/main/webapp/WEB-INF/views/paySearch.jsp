<%@page import="java.util.ArrayList"%>
<%@page import="com.itbank.mvcproject.ReservationDTO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#btn").click(function() {
				//	결제할 결제 정보 가져오기
				var imp_uid = $(":radio[name='cancle']:checked").val();
				//	오늘 날짜 가져오기
				var today = $("#today").text();
				//	입실 날짜 정보 가져올 변수
				var inDay = null
				
				//	선택된 테이블의 입실 날짜 가져오기
				for(var i = 1; i < $("#select tr").length; i++) {
					var chk = $("#select tr").eq(i).children().find("input[type='radio']").is(":checked");
					
					if (chk == true) {
						inDay = $("#select tr").eq(i).find("td").eq(6).text();
					}
				}
				
				console.log(inDay);
				
				today = today.substring(0, 4) + today.substring(5, 7) + today.substring(8, 10);
				inDay = inDay.substring(0, 4) + inDay.substring(5, 7) + inDay.substring(8, 10);
				
				//결제 취소 실행
				if(today >= inDay) {
					alert("당일 입실 및 이미 지난 날짜는 결제 취소가 불가능합니다.");
				} else {
					alert("결제 취소를 진행합니다.")
					document.location.href="cancle?imp_uid=" + imp_uid;
				}
				
			});
		});
	</script>
</head>
<body>
	
	<jsp:include page="header.jsp" flush="false"></jsp:include>
	
	
	<%
		Date day = new Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String today = df.format(day);
		ReservationDTO dto;
		ArrayList list = (ArrayList)request.getAttribute("list");
	%>
	
	<div class="container ie-h-align-center-fix">
		<div class="container tm-pt-5 tm-pb-4">
			<hr color="blue">
			
			<h3><p>결제 정보 및 결제 취소</p></h3>
			<div class="tm-section tm-section-pad tm-bg-gray" id="tm-section-4">
                <div class="container">
                    <div class="center">
                     	<div>
			                <table border="2" id="select">
							<tr align="center" style="background-color: skyblue">
								<th width="50">선 택</th>
								<th width="100">호텔명</th>
								<th width="150">상품명</th>
								<th width="100">구매자 이름</th>
								<th width="150">전화 번호</th>
								<th width="150">가 격</th>
								<th width="100">입실 날짜</th>
								<th width="100">퇴실 날짜</th>
							</tr>
								<% for(int i = 0; i < list.size(); i++) {
										dto = (ReservationDTO)list.get(i);
								%>
								
								<tr align="center">
									<td align="center"> 
										<input type="radio" name="cancle" value="<%= dto.getUid() %>"> 
									</td>
									<td><%= dto.gethName() %></td>
									<td><%= dto.getName() %></td> 
									<td><%= dto.getBuyerName() %></td> 
									<td><%= dto.getTel() %></td> 
									<td><%= dto.getPrice()%> </td> 
									<td id="inDay"><%= dto.getInDay() %></td> 
									<td><%= dto.getOutDay() %></td> 
									<td id="complete" hidden="hidden"><%= dto.getComplete()%></td> 
									<td id="today" hidden="hidden"><%= today %></td>
								</tr>
								<% } %>
							</table>
						</div>
					</div>
				</div>
			</div>
		<button type="button" class="btn btn-primary tm-btn-search" id="btn">결제 취소</button>
		</div>
	</div>
</body>
</html>