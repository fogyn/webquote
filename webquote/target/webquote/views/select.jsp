<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Select</title>
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/styleSelect.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/mainjsquote.js"></script>
    <jsp:useBean id="lists" scope="application" class="model.Lists" />
</head>
<body>



<section class="select" style="margin-top: 100px">
    <div class="container">
        <div class="row r0">
            <div class="col-4" style="margin: auto; margin-bottom: 50px;">
                <h1>
                    Выборка из базы
                </h1>
            </div>
        </div>
        <div class="row r1" style="margin-bottom: 50px;">
            <div class="col" style="display: flex; justify-content: center;">
                <form type="get" action="getallQuotes" method="GET" class="getform" >
                    <input type="submit" value="Выбрать все" class="sub">
                </form>
            </div>
            <div class="col" style="display: flex; justify-content: center;">
                <form type="get" action="getRandomQuote" method="GET" class="getform" >
                    <input type="submit" value="Случайная цитата" class="sub">
                </form>
            </div>

        </div>
        <hr>
        <div class="row r2" style="margin-bottom: 50px;">
            <div class="col">
                <form type="get" action="getRandomQuoteByIdCategory" method="GET" class="getform" >
                    <p style="background-color: yellow;">Введите id категории</p>
                    <input type="number" name="idCategory" required placeholder="номер категории">
                    <input type="submit" value="Вывести цитату по id категории" class="sub">
                </form>

                <div  style="overflow: scroll; height: 400px;" class="t2">
                    <p style="background-color: orangered;">Категории</p>
                    <c:forEach var="catid" items="${lists.categoryList}" varStatus="i">
                        <div  style="display: flex; justify-content: center; align-items: center; border: 2px solid blue;" >
                            <div style="margin: 10px;">
                                <p style="background-color: yellow;">
                                    <c:out value="${i.index} - ${catid}"></c:out>
                                </p>

                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>

            <div class="col">
                <form type="get" action="getAllQuoteByWord" method="GET" class="getform" >
                    <p style="background-color: yellow;">Введите слово из цитаты</p>
                    <input type="text" name="idword" required>
                    <input type="submit" value="Вывести все цитаты по слову" class="sub">
                </form>
            </div>

        </div>
        <hr>


        <div class="row">
            <div class="col" style="display: flex; justify-content: center;">
                <div class="home" style="display: flex; justify-content: center; border: 2px solid blue; width: 200px;">
                    <a href="../index.jsp"><h3>Главная</h3></a>
                </div>
            </div>
        </div>
    </div>
    <hr>
</section>

<section class="rez">
    <div class="container">
        <div class="row all">
            <div class="col">
                <div>
                    <!--вывод всей информации из базы-->
                    <c:if test="${allbool=='true' || randomboolWord == 'true'}">
                        <h1 style="display: flex; justify-content: center;">данные из базы</h1>

                        <div>

                                    <table style="margin: auto;">

                                        <tr>
                                            <th>
                                                idquote
                                            </th>
                                            <th>
                                                autor
                                            </th>
                                            <th>
                                                category
                                            </th>
                                            <th style="margin: auto;">
                                                text
                                            </th>

                                        </tr>

                                        <c:forEach var="el" items="${allQuotes}" varStatus="b">
                                            <c:set var="cat" value="${el['category']}" scope="session"></c:set>
                                            <tr>
                                                <td>
                                                    <c:out value="${b.index}"></c:out>
                                                </td>
                                                <td>
                                                    <c:out value="${el['autor']}"></c:out>
                                                </td>
                                                <td>

                                                    <c:out value="${lists.categoryList[cat]}"></c:out>
                                                </td>
                                                <td style="margin-top: 50px; margin-bottom: 50px; height: auto;">
                                                    <p style="width: 800px; text-align: justify; height: auto;">
                                                        <c:out value="${el['text']}"></c:out>
                                                    </p>

                                                </td>

                                            </tr>
                                        </c:forEach>

                                    </table>
                        </div>

                    </c:if>
                    <c:if test="${randombool=='true' || randomboolIdCategory == 'true'}">

                        <div>

                            <table style="margin: auto;">

                                <tr>

                                    <th>
                                        autor
                                    </th>
                                    <th>
                                        category
                                    </th>
                                    <th style="margin: auto;">
                                        text
                                    </th>

                                </tr>

                                    <c:set var="el" scope="session" value="${randomQuote}" ></c:set>
                                    <c:set var="cat" value="${el['category']}" scope="session"></c:set>
                                    <tr>

                                        <td>
                                            <c:out value="${el['autor']}"></c:out>
                                        </td>
                                        <td>

                                            <c:out value="${lists.categoryList[cat]}"></c:out>
                                        </td>
                                        <td style="margin-top: 50px; margin-bottom: 50px; height: auto;">
                                            <p style="width: 800px; text-align: justify; height: auto;">
                                                <c:out value="${el['text']}"></c:out>
                                            </p>

                                        </td>

                                    </tr>


                            </table>
                        </div>
                    </c:if>

                    <c:if test="${allbool22 =='true'}">

                        <div>
                            <c:out value="${all22}"></c:out>
                        </div>

                    </c:if>

                    <!--вывод названия стран-->
                <%--    <c:if test="${allboolcountry=='true' || allboolcapital=='true' || allboolcitybyCountry=='true'}">

                        <div style="margin: auto;">
                            <c:forEach var="out" items="${allc}" varStatus="b">
                                <div class="name2">
                                    <c:out value="${b.index+1}. ${out}"></c:out>
                                </div>

                            </c:forEach>
                        </div>
                    </c:if>

                    <!--вывод производителей и количество их авто-->
                    <c:if test="${namecol=='true'}">
                        <h1 style="display: flex; justify-content: center;">Все производители  и количество авто в базе</h1>
                        <div style="margin: auto;">
                            <c:forEach var="manufactory" items="${names_cols}" varStatus="b">
                                <div class="name2">
                                    <c:out value="${b.index+1}. ${manufactory['name']} - ${manufactory['count']}"></c:out>
                                </div>

                            </c:forEach>
                        </div>
                    </c:if>
                    <!--вывод производителя с максимальным числом авто-->
                    <c:if test="${namemaxbool=='true'}">
                        <h3 style="display: flex; justify-content: center; width: 900px; margin: auto">Наименование производителя с максимальным числом авто в базе</h3>
                        <div style="margin: auto;">
                            <c:forEach var="av" items="${namemax}" varStatus="b">
                                <div class="name2" style="display: flex; justify-content: center;">
                                    <c:out value="${av['name']} - ${av['count']}"></c:out>
                                </div>
                            </c:forEach>

                        </div>
                    </c:if>

                    <!--вывод производителя с минимальным числом авто-->
                    <c:if test="${nameminbool=='true'}">
                        <h3 style="display: flex; justify-content: center; width: 900px; margin: auto">Наименование производителя с минимальным числом авто в базе</h3>
                        <div style="margin: auto;">
                            <c:forEach var="av" items="${namemin}" varStatus="b">
                                <div class="name2" style="display: flex; justify-content: center;">
                                    <c:out value="${av['name']} - ${av['count']}"></c:out>
                                </div>
                            </c:forEach>
                        </div>
                    </c:if>


                    <!--вывод авто по конкретному году если такого авто нет-->
                    <c:if test="${yearboolnot=='true' || yearboolbetweennot =='true'}">
                        <h3 style="display: flex; justify-content: center; width: 900px; margin: auto">Наименование производителя с минимальным числом авто в базе</h3>
                        <div style="margin: auto;">
                            <div class="name2" style="display: flex; justify-content: center;">
                                <c:out value="${avto_notyear}"></c:out>
                            </div>
                        </div>
                    </c:if>
--%>



                </div>
            </div>
        </div>
    </div>
</section>




</body>
</html>
