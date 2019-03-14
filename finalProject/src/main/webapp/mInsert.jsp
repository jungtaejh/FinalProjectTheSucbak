<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"></script>
</head>

<body>

	<jsp:include page="resources/includes/header.jsp" flush="false"/>
	
	<div class="signUp">
		<form method="post" action="memberInsert.do">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>	
					<tr>
						<th colspan="3" ><h4 style="text-align: center">회원 정보 입력</h4>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5>
						<td>
						<input class="form-control" type="text" id="id" name="id" maxlength="20" required="required" placeholder="아이디를 입력해주세요.">
						</td>
<!-- 						<td style="width: 110px;">
						<button class="btn btn-primary"  type="button">중복체크
						</button> -->
					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5>
						<td colspan="2">
						<input class="form-control" type="password" id="userPassword1" name="pw" maxlength="20" required="required" placeholder="비밀번호를 입력해주세요.">
						</td>
					</tr>
					<!-- <tr>
						<td style="width: 120px;"><h5>비밀번호 확인</h5>
						<td colspan="2">
						<input class="form-control" type="password" id="userPassword2" name="userPassword2" maxlength="20" required="required" placeholder="비밀번호 확인을 입력해주세요.">
						</td>
					</tr> -->
					<tr>
						<td style="width: 110px;"><h5>이름</h5>
						<td colspan="2">
						<input class="form-control" type="text" id="name" name="name" maxlength="20" required="required" placeholder="이름을 입력해주세요.">
						</td>
					</tr>
<!-- 					<tr>
						<td style="width: 110px;"><h5>나이</h5>
						<td colspan="2">
						<input class="form-control" type="text" id="age" name="age" maxlength="20" required="required" placeholder="나이를 입력해주세요.">
						</td>
					</tr> -->
<!-- 					<tr>
						<td style="width: 110px;"><h5>성별</h5>
						<td colspan="2">
							<div class="form-group" style="text-align: center; margin: 0 auto;">
									<label class="btn btn-primary">
										<input type="radio" name="gender" autocomplete="off" value="mem" checked>남자
									</label>
									<label class="btn btn-primary">
										<input type="radio" name="gender" autocomplete="off" value="women">여자
									</label>
							</div>
						</td>
					</tr> -->
					<tr>
						<td style="width: 110px;"><h5>전화번호</h5>
						<td colspan="2">
						<input class="form-control" type="tel" id="tel" name="tel" maxlength="20" required="required" placeholder="전화번호를 입력해주세요.">
						</td>
					</tr>
<!-- 					<tr>
						<td style="width: 110px;"><h5>주소</h5>
						<td colspan="2">
						<input class="form-control" type="text" id="addr" name="addr" maxlength="20" required="required" placeholder="주소를 입력해주세요">
						</td>
					</tr>
 -->					<tr>
						<td style="text-align: right" colspan="3">
						<input class="btn btn-primary pull-right" type="submit" value="회원가입">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
<!--    <form action="insert.do">
      아이디 :  <input type="text" name="id"><br>
      패스워드 :  <input type="text" name="pw"><br>
      이름 :  <input type="text" name="name"><br>
      전화번호 :  <input type="text" name="tel"><br>
      나이 :  <input type="text" name="age"><br>
      성별 :  <input type="text" name="gender"><br>
      주소 :  <input type="text" name="addr"><br>
        <input type="submit" value="서버로 전송">
        <input type="reset" value="초기화">
      </form> -->

</body>
</html>


