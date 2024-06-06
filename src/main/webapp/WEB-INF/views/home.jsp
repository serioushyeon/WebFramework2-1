<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <style>
    .Bar {
      background-color: #0A4DA1;
      color: white;
      text-align: center;
      padding: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      justify-content: space-between;
      align-items: center;
      display: flex;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      display: contents;
    }

    .titleOfPage {
      font-size: 25px;
      margin: 0;
    }

    .button {
      background-color: #0A4DA1;
      border: none;
      color: white;
      text-align: center;
      text-decoration: none;
      cursor: pointer;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    .button:hover {
      background-color: #0D78F2;
    }

    .login-logout-btn {
      float: right;
    }

    .menu {
      list-style: none;
      padding: 0;
      margin: 20px 0;
    }

    .menu li {
      margin-bottom: 10px;
      background-color: #F4F4F4;
      padding: 10px;
      border-radius: 5px;
    }

    .menu li a {
      color: #0A4DA1;
      text-decoration: none;
    }

    .menu li a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
<div class="Bar">
  <span class="titleOfPage">학사정보시스템</span>
  <c:if test="${pageContext.request.userPrincipal.name != null}">
    <a href="javascript:document.getElementById('logout').submit()" class="button login-logout-btn">로그아웃</a>
  </c:if>
  <c:if test="${pageContext.request.userPrincipal.name == null}">
    <a href="<c:url value='/login'/>" class="button login-logout-btn">로그인</a>
  </c:if>
</div>

<div class="container">
  <ul class="menu">
    <li><a href="${pageContext.request.contextPath}/showCourse">학년별 이수 학점 조회</a></li>
    <li><a href="${pageContext.request.contextPath}/rgCourse">수강 신청</a></li>
    <li><a href="${pageContext.request.contextPath}/showRgCourse">수강 신청 조회</a></li>
  </ul>

  <form id="logout" action="<c:url value="/logout" />" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
  </form>
</div>
</body>
</html>
