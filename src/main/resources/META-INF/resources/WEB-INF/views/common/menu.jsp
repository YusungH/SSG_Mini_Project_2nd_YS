<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<style>
    /* 사이드바 스타일 */
    .sidebar {
        width: 200px; /* 너비 설정 */
        height: 100vh; /* 화면 전체 높이 */
        position: fixed; /* 왼쪽에 고정 */
        top: 80px; /* 상단 네비게이션 아래로 */
        left: 0;
        background-color: #f8f9fa; /* 배경색 */
        padding-top: 20px;
        border-right: 2px solid #ddd; /* 구분선 */
    }

    .sidebar .nav-link {
        display: block;
        color: #333;
        padding: 10px 20px;
        text-decoration: none;
        font-size: 18px;
    }

    .sidebar .nav-link:hover {
        background-color: #ddd; /* 마우스 오버 효과 */
    }

    /* 본문 영역을 사이드바 오른쪽으로 이동 */
    .content {
        margin-left: 220px; /* 사이드바 너비 + 여백 */
        padding: 20px;
    }
</style>

<!-- 좌측 사이드바 -->
<div class="sidebar">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Dairy">유제품</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Meat">육류</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Fruit">과일</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Vegetable">야채</a>
        </li>
            <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Fish">해산물</a>
        </li>
         <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Frozen">냉동식품</a>
        </li>
            <li class="nav-item">
            <a class="nav-link" href="main?gCategory=Sauce">조미료</a>
        </li>
        
    </ul>
</div>