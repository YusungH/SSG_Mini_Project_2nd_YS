
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<header class="border-bottom border-light border-5">
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-expand-lg w-100">
                <div class="collapse navbar-collapse justify-content-between">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="main">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="refrigerator">내 냉장고</a>
                        </li>
                    </ul>

                    <!-- 로그인 상태에 따른 네비게이션 -->
                    <ul class="navbar-nav">
                        <sec:authorize access="isAnonymous()">
                            <li class="nav-item">
                                <a class="nav-link" href="loginForm">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="signup">Signup</a>
                            </li>
                        </sec:authorize>

                        <sec:authorize access="isAuthenticated()">
                            <li class="nav-item">
                                <span class="nav-link">${login.username}</span>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="logout">Logout</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="mypage">My Page</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="cartList">Cart List</a>
                            </li>
                        </sec:authorize>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>