<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f5f5f5;
        }

        .form-signin {
            width: 100%;
            max-width: 400px;
            padding: 15px;
            margin: auto;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .form-signin-heading {
            margin-bottom: 20px;
            text-align: center;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-radius: 3px;
        }

        .error-msg {
            color: #ff0000;
            text-align: center;
            margin-bottom: 10px;
        }

        .logout-msg {
            color: #0000ff;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <form class="form-signin" method="post" action="<c:url value="/login" />">
        <h2 class="form-signin-heading">로그인 해주세요</h2>

        <c:if test="${not empty errorMsg}">
            <div class="error-msg"><h3>${errorMsg}</h3></div>
        </c:if>

        <c:if test="${not empty logoutMsg}">
            <div class="logout-msg"><h3>${logoutMsg}</h3></div>
        </c:if>

        <label for="username" class="sr-only">Username</label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Username" required autofocus>

        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>

    <a href="${pageContext.request.contextPath}/" class="btn btn-link btn-block">홈으로 돌아가기</a>
</div>
</body>

</html>
