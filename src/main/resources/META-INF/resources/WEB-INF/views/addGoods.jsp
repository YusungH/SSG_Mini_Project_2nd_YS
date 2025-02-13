<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>상품 추가</title>
    <script>
        // 이미지 미리보기 함수
        function previewImage(event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('imagePreview');
                output.src = reader.result;
                output.style.display = 'block';  // 이미지가 로드되면 미리보기 이미지 보이게 설정
                document.getElementById('gImage').value = event.target.files[0].name; // 파일명 자동 입력
            };
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
</head>
<body>
    <h2>상품 추가</h2>
    
    <!-- 업로드된 파일에 대한 메시지 출력 -->
    <c:if test="${not empty message}">
        <div>${message}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/addGoods" method="post" enctype="multipart/form-data">
        <!-- 상품 코드 입력 -->
        <div>
            <label for="gCode">상품 코드</label>
            <input type="text" id="gCode" name="gCode" required>
        </div>

        <!-- 상품 카테고리 입력 -->
        <div>
            <label for="gCategory">카테고리</label>
            <input type="text" id="gCategory" name="gCategory" required>
        </div>

        <!-- 상품명 입력 -->
        <div>
            <label for="gName">상품명</label>
            <input type="text" id="gName" name="gName" required>
        </div>

        <!-- 상품 설명 입력 -->
        <div>
            <label for="gContent">상품 설명</label>
            <input type="text" id="gContent" name="gContent" required>
        </div>

        <!-- 가격 입력 -->
        <div>
            <label for="gPrice">가격</label>
            <input type="number" id="gPrice" name="gPrice" required>
        </div>

        <!-- 재고 입력 -->
        <div>
            <label for="stock">재고</label>
            <input type="number" id="stock" name="stock" required>
        </div>

       <!-- 이미지 코드 (사용자가 직접 입력 가능) -->
<div>
    <label for="gImage">상품 이미지 코드:</label>
    <input type="text" id="gImage" name="gImage" required>
</div>

<!-- 파일 업로드 -->
<div>
    <label for="fileImage">상품 이미지 파일:</label>
    <input type="file" id="fileImage" name="fileImage" accept="image/*" required>
</div>

        <div>
            <img id="imagePreview" src="" alt="이미지 미리보기" style="max-width: 200px; display: none;">
        </div>

        <!-- 상품 추가 버튼 -->
        <button type="submit" class="btn btn-primary">상품 추가</button>
    </form>
</body>
</html>
