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
	
	<form method="post" action="index.jsp">
		<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
		<thead>
					<tr>
						<th colspan="3" ><h4 style="text-align: center">회원정보가 수정되었습니다</h4>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>변경된 전화번호</h5>
						<td>
						<input class="form-control" type="text" id="id" name="id" maxlength="20" value="${memberDTO.tel}">
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
	
	
</body>
</html>