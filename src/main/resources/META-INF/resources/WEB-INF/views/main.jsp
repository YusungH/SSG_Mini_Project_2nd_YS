<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.exam.dto.GoodsDTO" %>

<!DOCTYPE html>
<html lang="ko">
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

        .alert {
            background-color: #ffcccc;
            color: #cc0000;
            padding: 10px;
            border: 1px solid #cc0000;
            margin-bottom: 10px;
        }

        /* 벨 아이콘 스타일 */
        .notification-icon {
            position: fixed;
            top: 20px;
            right: 20px;
            font-size: 30px;
            cursor: pointer;
        }

        .notification-popup {
            display: none;
            position: fixed;
            top: 60px;
            right: 20px;
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            padding: 15px;
            w
