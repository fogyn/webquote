<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 04.05.2021
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DeleteQuote</title>
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/styleSelect.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/mainjsquote.js"></script>
</head>
<body>
    <h1>
        Delete
    </h1>

    <section>
        <div class="container">
            <div class="row">
                <div class="col">

                    <form type="get" action="deleteQuoteid" method="GET" class="getform" >
                        <p style="background-color: yellow;">Введиет id цитаты для удаления</p>
                        <input type="number" name="id" required>
                        <input type="submit" value="удалить" class="sub">
                    </form>

                </div>

            </div>
            <div class="row">
                <div class="col">
                    <c:out value="${delete}"></c:out>
                </div>
            </div>
        </div>
    </section>

    <hr>
    <a href="../index.jsp">Главная</a>
</body>
</html>
