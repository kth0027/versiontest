<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0;
	padd작업중: 0;
}

h2 {
text-align: center;}

#boardregister {
	height: 75vh;
}

.add {
display: flex;
justify-content: center;
}

form {
border: 1px solid black;
width : 80%;
}

form div {
margin : 10px 0;
padding : 10px;
}
</style>
</head>
<body>
	<%@include file="../header.jsp"%>
	<%@include file="../nav.jsp"%>
	<div id="boardregister">
		<h2>공정등록페이지</h2>
		<div class="add">
			<form action="../../controller/boardController.jsp" method="post"
				enctype="multipart/form-data">

				<div>
					<label>작업지시번호</label> <input type="text" maxlength="8"
						name="productnumber" /> <span>예)20190001</span>
				</div>
				<div>
					<label>제품코드</label> <select name="productcode"
						id="productcode-select">
						<option value="">--제품코드 선택--</option>
						<option value="A001">A001</option>
						<option value="A002">A002</option>
						<option value="B001">B001</option>
						<option value="B002">B002</option>
						<option value="C001">C001</option>
						<option value="C002">C002</option>
					</select>
				</div>
				<div>
					<label>제품명</label> <select name="productname"
						id="productname-select">
						<option value="">--제품 선택--</option>
						<option value="A-PRODUCT1">A-PRODUCT1</option>
						<option value="A-PRODUCT2">A-PRODUCT2</option>
						<option value="B-PRODUCT1">B-PRODUCT1</option>
						<option value="B-PRODUCT2">B-PRODUCT2</option>
						<option value="C-PRODUCT1">C-PRODUCT1</option>
						<option value="C-PRODUCT2">C-PRODUCT2</option>
					</select>
				</div>
				<div></div>
				<div>
					<label for="">재료준비</label> 완료 <input type="radio"
						name="productmaterial" value="완료" checked /> 작업중 <input
						type="radio" name="productmaterial" value="작업중" />
				</div>
				<div>
					<label for="">인쇄공정</label> 완료 <input type="radio"
						name="productprint" value="완료" checked /> 작업중 <input type="radio"
						name="productprint" value="작업중" />
				</div>
				<div>
					<label for="">코팅공정</label> 완료 <input type="radio"
						name="productcoting" value="완료" checked /> 작업중 <input
						type="radio" name="productcoting" value="작업중" />
				</div>
				<div>
					<label for="">합지공정</label> 완료 <input type="radio"
						name="producthabji" value="완료" checked /> 작업중 <input type="radio"
						name="producthabji" value="작업중" />
				</div>
				<div>
					<label for="">접합공정</label> 완료 <input type="radio"
						name="productjubhab" value="완료" checked /> 작업중 <input
						type="radio" name="productjubhab" value="작업중" />
				</div>
				<div>
					<label for="">포장공정</label> 완료 <input type="radio"
						name="productwarp" value="완료" checked /> 작업중 <input type="radio"
						name="productwarp" value="작업중" />
				</div>
				<div>
					<label>최종작업일자</label> <input type="text" maxlength="8"
						name="productworkday" /> <span>예)20190001</span>
				</div>
				<div>
					<label for="">작업시간</label> <input type="text"
						name="productsuccessday" /> <span>예)1300</span>
				</div>
				<div class="submitbtn">
					<input type="submit" value="공정등록" onclick="func_confirm()" /> <input
						type="submit" value="공정수정" /> <input type="submit" value="다시쓰기" />
				</div>
			</form>
		</div>
	</div>
	<%@include file="../footer.jsp"%>'



	<script type="text/javascript">
		function func_confirm() {
			alert("등록되었습니다.");
		}
	</script>

</body>
</html>