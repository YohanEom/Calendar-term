<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="pageTitle" value="Welcome to myCalendar!" scope="request"/>
<html>
<head>
	<title>myCalendar: <c:out value="${pageTitle}" /> </title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <c:url var="resourceUrl" value="/resources"/>
    <link href="${resourceUrl}/bootstrap-3.3.1/css/bootstrap.css" rel="stylesheet"/>
    <link href="${resourceUrl}/css/custom.css" rel="stylesheet"/>
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body class="header" onload='document.loginForm.id.focus();'>
<div class="container">
<jsp:include page="./includes/header.jsp"/>
    <c:if test="${message != null}">
        <div class="alert alert-danger" id="message"><c:out value="${message}"/></div>
    </c:if>
	<div id="login-box">

			<div class="alert alert-info" role="alert"><h3>
			<span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>
			LOGIN</h3></div>

		<c:if test="${not empty error}">
			<div class="alert alert-danger" role="alert">
  				<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  				<span class="sr-only">Error:</span>
  				Enter a valid email address and password.
			</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="alert alert-success" role="alert">
  				<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
  				<span class="sr-only">Error:</span>
  				Enter a valid email address and password.
			</div>
		</c:if>
 
 		<c:url value="/j_spring_security_check" var="loginUrl" />
		<form name='loginForm' action="${loginUrl}" method='POST'>
 
		<table class="table table-bordered">
			<tr>
				<td><input type='text' name='email' placeholder="E-mail"></td>
			</tr>
			<tr>
				<td><input type='password' name='password' placeholder="Password" /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="submit" /></td>
			</tr>
		  </table> 
		</form>
	</div>

<jsp:include page="./includes/footer.jsp"/>
</div>
</body>
</html>