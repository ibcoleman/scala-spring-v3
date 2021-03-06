<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

    <head>
        <meta charset="utf-8" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Agency - Start Bootstrap Theme</title>

        <!-- Bootstrap Core CSS -->
        <link href="<c:url value='/resources/css/bootstrap.min.css' />" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="<c:url value='/resources/css/agency.css' />" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="<c:url value='/resources/font-awesome-4.1.0/css/font-awesome.min.css'/>" rel="stylesheet"
              type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet'
              type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body id="page-top" class="index">

    <!-- Navigation -->
    <tiles:insertAttribute name="navigation"/>

    <!-- Header -->
    <header>
        <tiles:insertAttribute name="body"/>
    </header>


    <footer>
        <tiles:insertAttribute name="footer"/>
    </footer>


    <!-- jQuery Version 1.11.0 -->
    <script src="<c:url value='/resources/js/jquery-1.11.0.js'/>" type="text/javascript"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value='/resources/js/bootstrap.min.js'/>" type="text/javascript"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/classie.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/cbpAnimatedHeader.js'/>" type="text/javascript"></script>

    <!-- Contact Form JavaScript -->
    <script src="<c:url value='/resources/js/jqBootstrapValidation.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/resources/js/contact_me.js'/>" type="text/javascript"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<c:url value='/resources/js/agency.js'/>" type="text/javascript"></script>

    </body>

</html>

