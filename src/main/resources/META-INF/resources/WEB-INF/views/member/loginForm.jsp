<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="webjars/jquery/3.7.1/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    
    // 로그인 처리
    $("form").on("submit", function(){
        this.action = "auth";   // LoginServlet
        this.method = "post";   // doPost
    });
  }); // end ready
</script>

<div class="container d-flex justify-content-center">
	<div class="w-100">
	<div class="text-center">${errorMessage}</div> 
	<form class="row g-3 m-4 text-center">
		<div class="row mb-3 justify-content-center">
			<label for="userid" class="col-sm-2 col-form-label">아이디</label>
			<div class="col-auto">
				<input type="text" class="form-control" id="userid" name="userid">
			</div>
		</div>
		<div class="row mb-3 justify-content-center">
			<label for="password" class="col-sm-2 col-form-label">비밀번호</label>
				<div class="col-auto">
					<input type="password" class="form-control" name="passwd" id="passwd">
				</div>
			</div>
		<div class="col-12 d-flex justify-content-center">
			<button type="submit" class="btn btn-primary">로그인</button>
			&nbsp;&nbsp;
			<button type="reset" class="btn btn-primary">취소</button>
		</div>
	</form>
	</div> 
</div>
