<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>수강신청조회</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <p><a href="${pageContext.request.contextPath}/" class="back-link">홈으로 돌아가기</a></p>
    <table border="1">
        <thead>
        <tr>
            <th>년도</th>
            <th>학기</th>
            <th>교과목명</th>
            <th>교과구분</th>
            <th>담당교수</th>
            <th>학점</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="hansungCourse" items="${hansungCourseList2024_2}">
            <tr>
                <td>${hansungCourse.year}</td>
                <td>${hansungCourse.semester}</td>
                <td>${hansungCourse.name}</td>
                <td>${hansungCourse.kind}</td>
                <td>${hansungCourse.teacher}</td>
                <td>${hansungCourse.credit}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
