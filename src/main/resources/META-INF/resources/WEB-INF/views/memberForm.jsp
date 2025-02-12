<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인홈페이지</title>
<style type="text/css">
    .App {
      text-align: center;
      font-size: 16px;
    }

    label, input, button {
      margin: 10px;
      padding: 5px;
    }

    footer {
      bottom: 0;
      position: absolute;
      width: 90%;
      height: 40px;
    }

    /* 반응형 레이아웃을 위해 사이드바 크기와 컨텐츠 크기 조정 */
    @media (max-width: 768px) {
        .sidebar {
            display: none; /* 작은 화면에서는 사이드바 숨기기 */
        }
    }
</style>
<link rel="stylesheet" href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
<script src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</head>
<body>
 <div class="App">
    <jsp:include page="common/top.jsp" flush="true" /><br>
    <div class="container">
        <div class="row">
            <!-- 왼쪽 사이드바 (menu.jsp) - 큰 화면에서는 3칸, 작은 화면에서는 숨김 -->
            <div class="col-sm-12 col-md-3 col-lg-2 sidebar"> 
                <jsp:include page="common/menu.jsp" flush="true" />
            </div>
            <!-- 오른쪽 컨텐츠 (memberForm.jsp) - 큰 화면에서는 9칸, 작은 화면에서는 12칸 -->
            <div class="col-sm-12 col-md-9 col-lg-10">
                <jsp:include page="member/memberForm.jsp" flush="true" />
            </div>
        </div>
    </div>
 </div>
</body>
</html>
