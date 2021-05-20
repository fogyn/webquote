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
    <title>Upadate</title>
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/styleSelect.css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/mainjsquote.js"></script>
</head>
<body>
    <h1>
        Update Quote
    </h1>
    <section>
        <div class="container">
            <div class="row">
                <div class="col">

                        <form type="get" action="updateQuotebyid" method="GET" class="getform" >
                            <p style="background-color: yellow;">Введиет id цитаты для редактирования</p>
                            <input type="number" name="id" required>
                            <input type="submit" value="Вывести цитату по id" class="sub">
                        </form>

                </div>

            </div>
            <div class="row">
                <div class="col">
                    <div>
                        <c:if test="${updateId=='true'}">

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

                                    <c:set var="el" scope="session" value="${QuoteId}" ></c:set>
                                    <c:set var="cat" value="${el['category']}" scope="session"></c:set>
                                    <tr>
                                        <td>
                                            <c:out value="${id}"></c:out>
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


                                </table>
                            </div>
                        </c:if>

                        <%--<c:if test="${updateid !='true'}">

                        </c:if>--%>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">

                    <c:if test="${updateId=='true'}">
                        <h5 style="margin: auto; margin-top: 50px; margin-bottom: 50px;">
                            Введите отредактированные данные. Заполнить надо все поля (даже если значение не изменилось)
                        </h5>
                        <form type="post" action="updateQuotebyid" method="POST" class="postform" >
                            <div>
                                <input type="number" name="id" value="${id}" hidden>
                            </div>

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
                                <input type="submit" value="Редактировать" class="sub">
                            </div>

                        </form>
                    </c:if>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <c:out value="${update}"></c:out>
                </div>

            </div>
        </div>
    </section>

    <hr>
    <a href="../index.jsp">Главная</a>
</body>
</html>
