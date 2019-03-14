<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.itbank.mvcproject.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script> -->
<style type="text/css">

div.container2 {
    position: relative;
 	left: 200px;
 	top: -100px;
    <!-- border: 3px solid #73AD21; -->
    
} 
div.container3 {
    position: relative;
 	left: 1100px;
 	top: -1100px;
    <!-- border: 3px solid #73AD21; -->
    width: 1800px;
} 

</style>

<title>Offers</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Travelix Project">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="resources/styles/bootstrap4/bootstrap.min.css">
	<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="resources/styles/offers_styles.css">
	<link rel="stylesheet" type="text/css" href="resources/styles/offers_responsive.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="resources/font-awesome-4.7.0/css/font-awesome.min.css">                <!-- Font Awesome -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" type="text/css" href="resources/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="resources/css/datepicker.css"/>
    <link rel="stylesheet" href="resources/css/tooplate-style.css">                                   <!-- Templatemo style -->

</head>
		<!-- Javascript -->
 		<script src="resources/js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="resources/js/popper.min.js"></script>                    <!-- https://popper.js.org/ -->       
        <script src="resources/js/bootstrap.min.js"></script>                 <!-- https://getbootstrap.com/ -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
        <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
        <script src="resources/js/jquery.singlePageNav.min.js"></script>      <!-- Single Page Nav (https://github.com/ChrisWojcik/single-page-nav) -->
        <script src="resources/slick/slick.min.js"></script>    
        <script type="text/javascript" src="resources/js/paging.js"></script>
		<script src="resources/js/jquery-3.1.1.min.js"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<body>

		<%	
			String inputCheckIn = (String) request.getAttribute("inputCheckIn");
			String inputCheckOut = (String) request.getAttribute("inputCheckOut");			
		%>
			
		<div class="container2">
				<div class="offers_sorting_container">
				<p class="policy_name">
			<span class="policy_name_icon"> <svg
					class="bk-icon -experiments-calendar_checkin hp-policies-calendar-icon"
					height="20" width="20" viewBox="0 0 128 128"> <path
					d="M112 16H96V8h-8v8H40V8h-8v8H16c-4.4 0-8 3.9-8 8.7v86.6c0 4.8 3.6 8.7 8 8.7h96c4.4 0 8-3.9 8-8.7V24.7c0-4.8-3.6-8.7-8-8.7zm0 95.3a1.1 1.1 0 0 1-.2.7H16.2a1.1 1.1 0 0 1-.2-.7V40h96zM32 84h12v12H32zm38-16H58V56h12zm0 28H58V84h12zm26 0H84V84h12zm0-28H84V56h12zM48 52H28v20h20zm-6 14h-8v-8h8z" />
				</svg>
			</span> <span> 체크인 </span>
		</p>
		<p>
			<span data-component="prc/timebar" class="u-display-block"
				data-from="14:00" data-from-label="14:00" data-until="21:00"
				data-until-label="21:00" data-caption="14:00~21:00">
				<%=inputCheckIn %> </span>
		</p>
		
	 	
	
		<p class="policy_name">
			<span class="policy_name_icon"> <svg
					class="bk-icon -experiments-calendar_checkout hp-policies-calendar-icon"
					height="20" width="20" viewBox="0 0 128 128"> <path
					d="M112 16H96V8h-8v8H40V8h-8v8H16c-4.4 0-8 3.9-8 8.7v86.6c0 4.8 3.6 8.7 8 8.7h96c4.4 0 8-3.9 8-8.7V24.7c0-4.8-3.6-8.7-8-8.7zm0 95.3a1.1 1.1 0 0 1-.2.7H16.2a1.1 1.1 0 0 1-.2-.7V40h96zM44 68H32V56h12zm0 28H32V84h12zm26-28H58V56h12zm0 28H58V84h12zm26-28H84V56h12zm4 12H80v20h20zm-6 14h-8v-8h8z" />
				</svg>
			</span> <span> 체크아웃 </span>
		</p>
		<p>
		
			<span data-component="prc/timebar" class="u-display-block"
				data-until="13:00" data-until-label="13:00" data-from="00:00"
				data-from-label="00:00" data-caption="00:00~13:00">
				<%=inputCheckOut %> </span>
		</p>
						<ul class="offers_sorting">
							<li>
								<span class="sorting_text">가격대</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".price_sorting"><span>5~10</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>10~20</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>20~30</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>40~50</span></li>
								</ul>
							</li>
							
							<li>
								<span class="sorting_text">지역(구)</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>금천구</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>강서구</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>영등포구</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>마포구</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>역삼</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>관악구</span></li>
								</ul>
							</li>
							
							<li>
								<span class="sorting_text">별점</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="filter_btn" data-filter="*"><span></span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "stars" }'><span>0점</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>1점이상</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>2점이상</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>3점이상</span></li>
									<li class="filter_btn" data-filter=".rating_4"><span>4점이상</span></li>
									<li class="filter_btn" data-filter=".rating_5"><span>5점이상</span></li>
								</ul>
								
							</li>
							
						</ul>
					
					</div>
	
	
		<select class='btn btn-primary' id='listCount' name='listCount' onchange='listCnt();'>
			<option value='5' >5</option>
			<option value='10'>10</option>
			<option value='15'>15</option>
			<option value='20'>20</option>
		</select>
	
		<table class="table table-bordered" >
			
						<tr>
						<%
						HPDAO dao;
						HPDTO dto;
						ArrayList<HPDTO> list;
						PagingVo vo;
						ArrayList hpList = (ArrayList) request.getAttribute("lists");
						vo = (PagingVo) request.getAttribute("p");
						for (int i = 0; i < hpList.size(); i++) {
							dto = (HPDTO) hpList.get(i);

						%>
			
							
								<div class="col-lg-8">
										<div class="offers_icons">
											<ul class="offers_icons_list" >
											
											<a href = "two.jsp?inputCheckIn=<%=inputCheckIn %>&inputCheckOut=<%=inputCheckOut %>&id=<%=dto.getId() %>&name=<%=dto.getName() %>&location=<%=dto.getLocation() %>&lat=<%=dto.getLat() %>&lng=<%=dto.getLng() %>">
											
											<img id = "img" src="resources/hp/<%=dto.getId() %>.jpg" width="400" height="200" img style="
												border: 3px solid gold;
												border-radius: 7px;
												-moz-border-radius: 7px;
												-khtml-border-radius: 7px;
												-webkit-border-radius: 7px;
												"></a>
												
												<li class="offers_icons_item"><img src="images/post.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/compass.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/bicycle.png" alt=""></li>
												<li class="offers_icons_item"><img src="images/sailboat.png" alt=""></li>
											</ul>
		
										</div>
									<div class="offers_content">
										<div class="offers_price" align="right"><%=dto.getState() %><span></span></div>
										<div class="rating_r rating_r_4 offers_rating" data-rating="4">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div>
										<p class="offers_text"><%=dto.getName() %></p>
										<br>
										지역:<%=dto.getLocation() %>
		
									</div>
								</div>
				
						<hr> 						
						</tr>
						<%}%>
						<hr> 						
					
		</table>
	
		<!-- 5. paging view -->
		<ul class="pagination">
			<%

				
			if(vo.getPageStartNum() != 1) {%>
			
				<!--맨 첫페이지 이동 -->
				<li><a onclick='pagePre(<%=vo.getPageCnt() + 1%>,<%=vo.getPageCnt()%>);'>&laquo;</a></li>
				<!--이전 페이지 이동 -->
				<li><a onclick='pagePre(<%=vo.getPageStartNum()%>,<%=vo.getPageCnt()%>);'>&lsaquo;</a></li>
			
			<!--페이지번호 -->
			<%}
			for (int j = vo.getPageStartNum(); j < vo.getPageLastNum(); j++) {
			%>
				<li class='pageIndex<%=j%>'><a onclick='pageIndex(<%=j%>);'><%=j%></a></li>
				
			<%}%>
			
			
				<!--다음 페이지 이동 -->
				<li><a onclick='pageNext(<%=vo.getPageStartNum()%>,<%=vo.getTotal()%>,<%=vo.getListCnt()%>,<%=vo.getPageCnt()%>);'>&rsaquo;</a></li>
				<!--마지막 페이지 이동 -->
				<li><a onclick='pageLast(<%=vo.getPageStartNum()%>,<%=vo.getTotal()%>,<%=vo.getListCnt()%>,<%=vo.getPageCnt()%>);'>&raquo;</a></li>
			
		</ul>
		<form action="./paging.do" method="post" id='frmPaging'>
			<!--출력할 페이지번호, 출력할 페이지 시작 번호, 출력할 리스트 갯수 -->
			<input type='hidden' name='index' id='index' value='<%=vo.getIndex()%>'>
			<input type='hidden' name='pageStartNum' id='pageStartNum' value='<%=vo.getPageStartNum()%>'>
			<input type='hidden' name='listCnt' id='listCnt' value='<%=vo.getListCnt()%>'>	
		</form>
			
			<%if(vo.getLastChk()) {}%>
	
		<div><a href="./remove.do">모두삭제</a></div><br/>
		<div><a href="./list.do?num=1">리스트1개추가하기</a></div><br/>
		<div><a href="./list.do?num=3">리스트3개추가하기</a></div><br/> 
				
				
				</div>
				
				<div class="container3" style="float:right;">
					
				
				
				</div>
	
<script src="resources/js/jquery-3.2.1.min.js"></script>
<script src="resources/styles/bootstrap4/popper.js"></script>
<script src="resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="resources/plugins/easing/easing.js"></script>
<script src="resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="resources/js/offers_custom.js"></script>

</body>

</html>