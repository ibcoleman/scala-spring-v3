<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
    <title><tiles:insertAttribute name="title"/></title>
    <!-- stylesheets -->
    <link rel="stylesheet" href="<c:url value='/resources/css/normalize.css' />" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/mygrteam.css' />" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/mygrteam.shell.css' />" type="text/css"/>
    <!-- third-party javascript -->
    <script src="<c:url value='/resources/js/jquery-1.11.0.js' />"></script>
    <script src="<c:url value='/resources/js/jquery.uriAnchor1.1.1-3.js' />" ></script>
    <!-- our javascript -->
    <script src="<c:url value='/resources/js/mygrteam.js' />" ></script>
    <script src="<c:url value='/resources/js/mygrteam.shell.js' />" ></script>
    <script>
        $(function () { mygrteam.initModule( $('#mygrteam') ); });
    </script>
</head>
<body>
<div id="mygrteam"></div>
</body>
</html>
