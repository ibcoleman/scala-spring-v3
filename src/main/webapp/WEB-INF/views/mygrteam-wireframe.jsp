<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
    <title><tiles:insertAttribute name="title"/></title>
    <link rel="stylesheet" href="<c:url value='/resources/css/mygrteam.css' />" type="text/css"/>

    <style>
        .mygrteam-shell-head, .mygrteam-shell-head-logo, .mygrteam-shell-head-acct,
        .mygrteam-shell-head-search, .mygrteam-shell-main, .mygrteam-shell-main-nav,
        .mygrteam-shell-main-content, .mygrteam-shell-foot, .mygrteam-shell-chat,
        .mygrteam-shell-modal {
            position : absolute;
        }
        .mygrteam-shell-head {
            top : 0;
            left : 0;
            right : 0;
            height : 40px;
        }
        .mygrteam-shell-head-logo {
            top : 4px;
            left : 4px;
            height : 32px;
            width : 128px;
            background : orange;
        }
        .mygrteam-shell-head-acct {
            top : 4px;
            right : 0;
            width : 64px;
            height : 32px;
            background : green;
        }
        .mygrteam-shell-head-search {
            top : 4px;
            right : 64px;
            width : 248px;
            height : 32px;
            background : blue;
        }
        .mygrteam-shell-main {
            top : 40px;
            left : 0;
            bottom : 40px;
            right : 0;
        }
        .mygrteam-shell-main-content,
        .mygrteam-shell-main-nav {
            top : 0;
            bottom : 0;
        }
        .mygrteam-shell-main-nav {
            width : 250px;
            background : #eee;
        }
        .mygrteam-x-closed .mygrteam-shell-main-nav {
            width : 0;
        }
        .mygrteam-shell-main-content {
            left : 250px;
            right : 0;
            background : #ddd;
        }
        .mygrteam-x-closed .mygrteam-shell-main-content {
            left : 0;
        }
        .mygrteam-shell-foot {
            bottom : 0;
            left : 0;
            right : 0;
            height : 40px;
        }
        .mygrteam-shell-chat {
            bottom : 0;
            right : 0;
            width : 300px;
            height : 15px;
            background : red;
            z-index : 1;
        }
        .mygrteam-shell-modal {
            margin-top : -200px;
            margin-left : -200px;
            top : 50%;
            left : 50%;
            width : 400px;
            height : 400px;
            background : #fff;
            border-radius : 3px;
            z-index : 2;
        }
    </style>
</head>
<body>
<div id="mygrteam">
    <div class="mygrteam-shell-head">
        <div class="mygrteam-shell-head-logo"></div>
        <div class="mygrteam-shell-head-acct"></div>
        <div class="mygrteam-shell-head-search"></div>
    </div>
    <div class="mygrteam-shell-main">
        <div class="mygrteam-shell-main-nav"></div>
        <div class="mygrteam-shell-main-content"></div>
    </div>
    <div class="mygrteam-shell-foot"></div>
    <div class="mygrteam-shell-chat"></div>
    <div class="mygrteam-shell-modal"></div>
</div>
</body>
</html>