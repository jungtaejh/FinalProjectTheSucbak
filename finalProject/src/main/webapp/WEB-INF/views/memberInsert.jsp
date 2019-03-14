<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%-- 
   <center>
   	회원가입 신청이 완료되었습니다. <br>
   <hr>
   
   id: ${memberDTO.id} <br> <!-- == memberDTO.getId() -->
   pw: ${memberDTO.pw} <br>
   name: ${memberDTO.name} <br>
   tel: ${memberDTO.tel} <br>
   age: ${memberDTO.age} <br>
   gender: ${memberDTO.gender} <br>
   addr: ${memberDTO.addr}<br>
   <a href="index.jsp">홈페이지로</a>
   
   </center> --%>


	<script>
    alert("회원가입이 완료 되었습니다.");
	</script>
	
<div class="signUp">
			<form method="post" action="index.jsp	">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5>
						<td>
						<input class="form-control" type="text" id="id" name="id" maxlength="20" value="${memberDTO.id}">
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5>
						<td colspan="2">
						<input class="form-control" type="text" id="userPassword1" name="pw" maxlength="20" value="${memberDTO.pw}">
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이름</h5>
						<td colspan="2">
						<input class="form-control" type="text" id="name" name="name" maxlength="20" value="${memberDTO.name}">
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>전화번호</h5>
						<td colspan="2">
						<input class="form-control" type="text" id="tel" name="tel" maxlength="20" value="${memberDTO.tel}">
						</td>
					</tr>
					<tr>
					<td style="text-align: right" colspan="3">
						<input class="btn btn-primary pull-right" type="submit" value="홈페이지">
						</td>
					</tr>
				</tbody>
			</table>
			</form>
	</div>

</body>
</html>