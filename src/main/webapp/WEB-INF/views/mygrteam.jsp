<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!doctype html>
<html>
<head>
    <!-- Fix IE: ie9+ rendering support for latest standards -->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title><tiles:insertAttribute name="title"/></title>

    <!-- third party stylesheets -->
    <link rel="stylesheet" href="<c:url value='/resources/css/normalize.css' />" type="text/css"/>

    <!-- project stylesheets -->
    <link rel="stylesheet" href="<c:url value='/resources/css/mygrteam.css' />" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/mygrteam.shell.css' />" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/mygrteam.chat.css' />" type="text/css"/>

    <!-- third-party javascript -->
    <script src="<c:url value='/resources/js/jquery-1.11.0.js' />"></script>
    <script src="<c:url value='/resources/js/jquery.uriAnchor1.1.1-3.js' />" ></script>

    <!-- project javascript -->
    <script src="<c:url value='/resources/js/mygrteam.js' />" ></script>
    <script src="<c:url value='/resources/js/mygrteam.util.js' />" ></script>
    <script src="<c:url value='/resources/js/mygrteam.model.js' />" ></script>
    <script src="<c:url value='/resources/js/mygrteam.shell.js' />" ></script>
    <script src="<c:url value='/resources/js/mygrteam.chat.js' />" ></script>
    <script>
        $(function () { mygrteam.initModule( $('#mygrteam') ); });
    </script>
</head>
<body>
<div id="mygrteam"></div>
</body>
</html>
