<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Quote</title>

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="js/mainjsquote.js"></script>
    <script src="js/start.js"></script>

</head>
<body>


<section class="network" style="margin-top: 100px">
    <div class="container">
        <div class="row r0">
            <div class="col-5" style="margin: auto">
                <h1>
                    Главная страница Цитат
                </h1>
            </div>
        </div>
        <div class="row r1">
            <div class="col">
                <a href="views/newQuote.jsp">
                    <p class="num1">
                        Создание новой цитаты
                    </p>
                </a>
            </div>
            <div class="col">
                <a href="views/updateQuote.jsp">
                    <p class="num1">
                        Редактирование цитаты
                    </p>
                </a>
            </div>
            <div class="col">
                <a href="views/deleteQuote.jsp">
                    <p class="num1">
                        Удаление цитаты
                    </p>
                </a>
            </div>
            <div class="col">
                <a href="views/select.jsp">
                    <p class="num1">
                        Выбор цитат
                    </p>
                </a>
            </div>
            <%--<div class="col">
                <div>
                    <form type="post" action="defaultDb" method="POST" class="postform" style="background-color: red;">
                        <input type="submit" value="Заполнение базы по дефолту" style="background-color: red; color: #000000;">
                    </form>
                </div>


            </div>--%>
        </div>

        <div class="row" style="margin: 50px;">
            <div class="col" style="margin-right: 20px;">
                <h6 style="margin-right: 20px;">
                    Текущее время
                </h6>
                <div id="id11" class="rezOrder">

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col">

                <div>
                    <button name="but1" id="taimer" style="width: 100px; height: 30px; margin-right: 20px;" onclick="formTimer();">
                        Таймер
                    </button>
                </div>

                <div id="idformtimer" style="display: none;">
                    <form id="formtimer" name="f1">
                        <label>Введите время для отсчета в секундах</label>
                        <input id="idnumSeconds" name="sec" type="number" required placeholder="Количество секунд" >

                    </form>
                    <div>
                        <button id="idStart" name="but2" onclick="startTimer();">Запуск</button>
                    </div>

                    <div id="rezTimer" style="font: 30px bold;">
                        Результат таймера
                    </div>
                    <%--<div>
                        <div>
                            Пауза
                        </div>
                        <div>
                            Остановка
                        </div>
                        <div>
                            Сброс
                        </div>
                    </div>--%>
                </div>
            </div>

        </div>

        <%--<div class="row" style="margin: 50px;">
            <div class="col">
                <c:if test="${defaultbool =='true'}">
                    <div>
                        <c:out value="${defaultDb}"></c:out>
                    </div>
                </c:if>
            </div>
        </div>--%>
    </div>
    <hr>
</section>






</body>
</html>
