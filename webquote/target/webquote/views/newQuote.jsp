<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 04.05.2021
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>NewQuote</title>
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/styleSelect.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/mainjsquote.js"></script>
</head>
<body>
    <h1>new Quote</h1>




    <section class="new">
        <div class="container">
            <div class="row">
                <div class="col">
                    <form type="post" action="newquote" method="POST" class="postform" >
                        <div>
                            <label style="background-color: yellow;">Автор</label>
                            <input type="text" name="autor" required>
                        </div>
                        <div>
                            <label style="background-color: yellow;">Категория</label>
                            <input type="text" name="category" required>
                        </div>

                        <div>
                            <label style="background-color: yellow;">Текст</label>
                            <textarea name="text" required></textarea>
                        </div>

                        <div>
                            <input type="submit" value="Создать" class="sub">
                        </div>

                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <c:out value="${newquote}"></c:out>
                </div>
            </div>
        </div>
    </section>

    <hr>
    <a href="../index.jsp">Главная</a>
</body>
</html>
