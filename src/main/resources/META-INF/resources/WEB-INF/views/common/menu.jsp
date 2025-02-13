<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<style>

    #category-title {
	    height: 30px;
	    font-weight:600;
	    border-bottom:1px solid #9aa6b2;
	    margin-top: 30px;
	    margin-bottom: 10px;
	}

    .nav-link:hover {
        background-color: #ddd; /* 마우스 오버 효과 */
    }

</style>

<!-- 좌측 사이드바 (menu.jsp) -->
<div class="">
    <div class="sidebar">
        <div id="category-title">카테고리</div>
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="main?gCategory=All">전체보기</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Snack">간식</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Fruit">과일</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Frozen">냉동식품</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Dairy">달걀/유제품</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Side%20dish">반찬</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Fish">생선/해산물</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Sauce">소스/조미료</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Meat">육류</a></li>
            <li class="nav-item"><a class="nav-link" href="main?gCategory=Vegetable">채소/신선식품</a></li>
        </ul>
    </div>
</div>