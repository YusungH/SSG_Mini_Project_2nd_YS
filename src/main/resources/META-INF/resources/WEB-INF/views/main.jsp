<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.exam.dto.GoodsDTO, com.exam.dto.RefrigeratorDTO"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>메인홈페이지 </title>
    <style type="text/css">
        /* 알림 아이콘 및 팝업 스타일 */
        .notification-icon {
            position: fixed;
            top: 20px;
            right: 20px;
            font-size: 30px;
            cursor: pointer;
            color: gray; /* 기본 아이콘 색상 */
        }

        .notification-icon.low-stock {
            color: black; /* 재고 부족 시 아이콘 색상 변경 */
        }

        .notification-popup {
            display: none; /* 기본적으로 숨김 */
            position: fixed;
            top: 60px;
            right: 20px;
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            padding: 15px;
            width: 250px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1000; /* 벨 아이콘보다 위에 보이도록 */
        }

        .notification-popup ul {
            padding-left: 20px;
        }

        .notification-popup ul li {
            margin-bottom: 5px;
        }

        .low-stock {
            color: red;
            font-weight: bold;
        }
    </style>

    <!-- 부트스트랩 스타일과 JS -->
    <link rel="stylesheet"
          href="webjars/bootstrap/5.3.3/css/bootstrap.min.css">
    <script src="webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

    <!-- Font Awesome (벨 아이콘) -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
          rel="stylesheet">

    <!-- 알림 토글 함수 -->
    <script>
        function toggleNotification() {
            console.log("Notification clicked!"); // 디버깅 로그
            var popup = document.getElementById("notificationPopup");
            // 팝업 토글
            popup.style.display = (popup.style.display === "none" || popup.style.display === "") ? "block" : "none";
        }
    </script>
</head>

<body>
    <!-- 공통 네비게이션 바 -->
    <jsp:include page="common/top.jsp" flush="true" />
    <!-- 사이드바 영역 (카테고리) -->

    <div class="container">
        <div class="row">

            <!-- 왼쪽 사이드바(menu.jsp) -->
            <div class="col-md-3">     
                <jsp:include page="common/menu.jsp" />
            </div>

            <!-- 오른쪽 컨텐츠(goodsList.jsp) -->
            <div class="col-md-9">
                <jsp:include page="goods/goodsList.jsp" />
            </div>
        </div>
    </div>

    <!-- 알림 아이콘 -->
    <div class="notification-icon <%=(request.getAttribute("hasLowrStock") != null && (boolean) request.getAttribute("hasLowrStock")) ? "low-stock" : ""%>"
         onclick="toggleNotification()">
        <i class="fas fa-bell"></i>
    </div>

    <!-- 알림 팝업 -->
    <div id="notificationPopup" class="notification-popup"
         style="display: <%= (request.getAttribute("hasLowrStock") != null && (Boolean) request.getAttribute("hasLowrStock")) ? "block" : "none" %>;">
        <strong>⚠ 내 냉장고 재고 부족 알림</strong><br>
        <ul>
            <%
                // lowStockItems 객체 가져오기
                Object lowrStockItemsObj = request.getAttribute("lowrStockItems");
         
                List<RefrigeratorDTO> lowrStockItems = null;

                // lowrStockItems가 실제로 List<RefrigeratorDTO> 타입인지 확인
               
                if (lowrStockItemsObj instanceof List<?>) {
                    lowrStockItems = (List<RefrigeratorDTO>) lowrStockItemsObj;
           
                    
                }
              
                // 재고 부족 아이템이 없을 경우
                if (lowrStockItems == null || lowrStockItems.isEmpty()) {
            %>
                <li>현재 부족한 상품이 없습니다!</li>
            <%
                } else {
                    for (RefrigeratorDTO refrigerator : lowrStockItems) {
                        String lowrStockClass = (refrigerator.getrStock() <= 10) ? "low-stock" : "";
            %>
                <li class="<%= lowrStockClass %>">
                    <%= refrigerator.getgName() %> (재고: <%= refrigerator.getrStock() %>개)
                </li>
            <%
                    }
                }
            %>
        </ul>
    </div>

</body>
</html>
