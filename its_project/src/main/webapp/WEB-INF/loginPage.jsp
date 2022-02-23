<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<c:url value="/images/flickITS.png"/>
<title>Login and Registration</title>
</head>
<body style="background-color: #05242C">
	<div class="container-sm mt-5">
	<div class="row justify-content-center" style="color: #F51720">
	<c:if test="${logoutMessage != null}">
        <c:out value="${logoutMessage}"></c:out>
    </c:if>
    </div>
    <h1 class="row justify-content-center mt-5" style="color: #dadada">Login</h1>
    	<div style="color: #F51720">
		    <c:if test="${errorMessage != null}">
		        <c:out value="${errorMessage}"></c:out>
		    </c:if>
    	</div>
	    <div class="d-flex justify-content-end">
            <a href="/registration" class="btn btn-info">Register Here</a>
    	</div>
	    <form method="POST" action="/login">
        <div class="form-group">
            <label for="username" style="color: #dadada">Username</label>
            <input class="form-control" type="text" id="username" name="username"/>
        </div>
        <div class="form-group">
            <label for="password" style="color: #dadada">Password</label>
            <input class="form-control" type="password" id="password" name="password"/>
        </div>
        <div class="mt-3">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        	<input type="submit" class="btn btn-success" value="Login"/>
        </div>
        <div class="mt-5" style="color: #dadada">
        	<hr/>
        	<p><u><em>To test admin access:</em></u></p>
        	<p><strong>Username:</strong> <small>adminTest</small></p>
        	<p><strong>Password:</strong> <small>password</small></p>
        	<br>
        	<p><u><em>To test user access:</em></u></p>
        	<p><strong>Username:</strong> <small>user</small></p>
        	<p><strong>Password:</strong> <small>password</small></p>
        	<hr />
        </div>
    </form>
    </div>
</body>
</html>