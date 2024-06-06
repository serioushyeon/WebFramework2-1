<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>수강신청</title>
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

        .formtable {
            width: 100%;
            border-collapse: collapse;
        }

        .formtable td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        .formtable .label {
            font-weight: bold;
            width: 30%;
        }

        .control {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .error {
            color: #f00;
            font-size: 12px;
        }

        .submit-btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-btn:hover {
            background-color: #0056b3;
        }

        .back-link {
            display: block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <sf:form method="post" action="${pageContext.request.contextPath}/success" modelAttribute="Course">
        <table class="formtable">
            <tr>
                <td class="label">년도:</td>
                <td><sf:input class="control" type="text" path="year" value="2024"/><br/>
                    <sf:errors path="year" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">학기:</td>
                <td>
                    <sf:select class="control" path="semester">
                        <option value="1">1</option>
                        <option value="2">2</option>
                    </sf:select>
                    <br/>
                    <sf:errors path="semester" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">과목코드:</td>
                <td><sf:input class="control" type="text" path="id"/> <br/>
                    <sf:errors path="id" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">교과목명:</td>
                <td><sf:input class="control" type="text" path="name"/> <br/>
                    <sf:errors path="name" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">교과구분:</td>
                <td><sf:input class="control" type="text" path="kind"/> <br/>
                    <sf:errors path="kind" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">담당교수:</td>
                <td><sf:input class="control" type="text" path="teacher"/> <br/>
                    <sf:errors path="teacher" class="error"/>
                </td>
            </tr>
            <tr>
                <td class="label">학점:</td>
                <td><sf:input class="control" type="text" path="credit"/> <br/>
                    <sf:errors path="credit" class="error"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="수강신청" class="submit-btn"/> </td>
            </tr>
        </table>
    </sf:form>
    <a href="${pageContext.request.contextPath}/" class="back-link">홈으로 돌아가기</a>
</div>
</body>
</html>
