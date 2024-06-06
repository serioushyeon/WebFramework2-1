<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>학년별 이수 학점 조회</title>
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
            margin-bottom: 20px;
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

        .details {
            display: none;
        }

        .show-details {
            background-color: #007bff;
            color: #fff;
            padding: 5px 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .show-details:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function toggleDetails(tableId) {
            var detailsTable = document.getElementById(tableId);
            if(detailsTable.style.display === "none") {
                detailsTable.style.display = "table";
            } else {
                detailsTable.style.display = "none";
            }
        }
    </script>
</head>
<body>
<div class="container">
<p><a href="${pageContext.request.contextPath}/">홈으로 돌아가기</a></p>
<table border="1">
    <thead>
        <tr><th>년도</th><th>학기</th><th>취득 학점</th><th>상세보기</th></tr>
    </thead>
    <tbody>
    <tr><td>2020</td><td>1</td><td>${total2020_1}</td><td><button class="show-details" onclick="toggleDetails('detail2020_1')">상세보기</button></td></tr>
    <tr><td>2020</td><td>2</td><td>${total2020_2}</td><td><button class="show-details" onclick="toggleDetails('detail2020_2')">상세보기</button></td></tr>
    <tr><td>2021</td><td>1</td><td>${total2021_1}</td><td><button class="show-details" onclick="toggleDetails('detail2021_1')">상세보기</button></td></tr>
    <tr><td>2021</td><td>2</td><td>${total2021_2}</td><td><button class="show-details" onclick="toggleDetails('detail2021_2')">상세보기</button></td></tr>
    <tr><td>2022</td><td>1</td><td>${total2022_1}</td><td><button class="show-details" onclick="toggleDetails('detail2022_1')">상세보기</button></td></tr>
    <tr><td>2022</td><td>2</td><td>${total2022_2}</td><td><button class="show-details" onclick="toggleDetails('detail2022_2')">상세보기</button></td></tr>
    <tr><td>2024</td><td>1</td><td>${total2024_1}</td><td><button class="show-details" onclick="toggleDetails('detail2024_1')">상세보기</button></td></tr>
    </tbody>
    <tfoot>
        <tr><td colspan="2">총계</td><td>${total}</td><td></td></tr>
    </tfoot>
</table>
<table border="1" id="detail2020_1" style="display:none;">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2020_1}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table border="1" id="detail2020_2" class="details">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2020_2}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table border="1" id="detail2021_1" class="details">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2021_1}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table border="1" id="detail2021_2" class="details">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2021_2}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table border="1" id="detail2022_1" class="details">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2022_1}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table border="1" id="detail2022_2" class="details">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2022_2}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<table border="1" id="detail2024_1" class="details">
    <thead>
    <tr><th>년도</th><th>학기</th><th>교과목명</th><th>교과구분</th><th>담당교수</th><th>학점</th></tr>
    </thead>
    <tbody>
    <c:forEach var="Course" items="${courseList2024_1}">
        <tr>
            <td>${Course.year}</td>
            <td>${Course.semester}</td>
            <td>${Course.name}</td>
            <td>${Course.kind}</td>
            <td>${Course.teacher}</td>
            <td>${Course.credit}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
</body>
</html>
