<%@ page import="main.Cell" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="main.Table" %>
<%@ page import="java.util.Date" %>
<%
    Table table = (Table) application.getAttribute("table");
    if (table == null) {
        table = new Table();
    }
%>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <title>Web, Lab2, Kolesnikov Nikita</title>
    <link rel="shortcut icon" href="resources/pictures/favicon.ico" type="image/x-icon">

    <style>
        <%@include file="resources/css/style.css"%>
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script src="resources/scripts/sender.js"></script>
    <script src="resources/scripts/script.js"></script>

</head>
<body>
<img class="flying" src="resources/pictures/fairy1.gif" width="100px" height="200px">
<header>
    <h1>Веб-программирование, Лаб. 2, Вариант 10287</h1>
    <div><p id="credit"><img src="resources/pictures/hearts.gif" width="40" height="20"> <a id="git"
                                                                                            href="https://github.com/roclh"
                                                                                            title="Перейти к профилю Github разработчика">Колесников
        Никита Алексеевич, P3210</a> <img src="resources/pictures/hearts.gif" width="40" height="20"></p></div>
</header>
<aside>
    <div><img src="resources/pictures/barbie2.gif" width=100px height=500px></div>
    <div><img src="resources/pictures/barbie2.gif" width=100px height=500px></div>
    <div><img src="resources/pictures/barbie2.gif" width=100px height=500px></div>
    <div><img src="resources/pictures/barbie2.gif" width=100px height=500px></div>
</aside>
<main>

    <div class="container task">


        <h4>Разработать веб-приложение на базе сервлетов и JSP, определяющее попадание точки на координатной плоскости в
            заданную область.</h4>
        <h5>•ControllerServlet, определяющий тип запроса, и, в зависимости от того, содержит ли запрос информацию о
            координатах точки и радиусе, делегирующий его обработку одному из перечисленных ниже компонентов. Все
            запросы внутри приложения должны передаваться этому сервлету (по методу GET или POST в зависимости от
            варианта задания), остальные сервлеты с веб-страниц напрямую вызываться не должны.<br>
            •AreaCheckServlet, осуществляющий проверку попадания точки в область на координатной плоскости и формирующий
            HTML-страницу с результатами проверки. Должен обрабатывать все запросы, содержащие сведения о координатах
            точки и радиусе области.<br>
            •Страница JSP, формирующая HTML-страницу с веб-формой. Должна обрабатывать все запросы, не содержащие
            сведений о координатах точки и радиусе области.<br>
            •Разработанная страница JSP должна содержать:
            <br>
            "Шапку", содержащую ФИО студента, номер группы и номер варианта.
            <br>
            Форму, отправляющую данные на сервер.
            <br>
            Набор полей для задания координат точки и радиуса области в соответствии с вариантом задания.
            <br>
            Сценарий на языке JavaScript, осуществляющий валидацию значений, вводимых пользователем в поля формы.
            <br>
            Интерактивный элемент, содержащий изображение области на координатной плоскости (в соответствии с вариантом
            задания) и реализующий следующую функциональность:
            Если радиус области установлен, клик курсором мыши по изображению должен обрабатываться JavaScript-функцией,
            определяющей координаты точки, по которой кликнул пользователь и отправляющей полученные координаты на
            сервер для проверки факта попадания.
            В противном случае, после клика по картинке должно выводиться сообщение о невозможности определения
            координат точки.
            После проверки факта попадания точки в область изображение должно быть обновлено с учётом результатов этой
            проверки (т.е., на нём должна появиться новая точка).
            <br>
            Таблицу с результатами предыдущих проверок. Список результатов должен браться из контекста приложения,
            HTTP-сессии или Bean-компонента в зависимости от варианта.
            <br>
            Страница, возвращаемая AreaCheckServlet, должна содержать:
            <br>
            •Таблицу, содержащую полученные параметры.<br>
            •Результат вычислений - факт попадания или непопадания точки в область.<br>
            •Ссылку на страницу с веб-формой для формирования нового запроса.<br>
            •Разработанное веб-приложение необходимо развернуть на сервере WildFly. Сервер должен быть запущен в
            standalone-конфигурации, порты должны быть настроены в соответствии с выданным portbase, доступ к http
            listener'у должен быть открыт для всех IP.
        </h5>

    </div>
    <div></div>
    <canvas id='area' height=300px width=300px></canvas>
    <script src="resources/scripts/image.js"></script>
    </div>
    <p></p>
    <div class="container form">
        <form id="main-form" method="GET">
            <p>
            <table class="radio">
                <tr>
                    <td></td>
                    <td><label for="X0"></label><input type="radio" id="X0" name="X" value="-3">-3</td>
                    <td><label for="X1"></label><input type="radio" id="X1" name="X" value="-2">-2</td>
                    <td><label for="X2"></label><input type="radio" id="X2" name="X" value="-1">-1</td>
                </tr>
                <tr>
                    <td> X =</td>
                    <td><label for="X3"></label><input type="radio" id="X3" name="X" value="0">0</td>
                    <td><label for="X4"></label><input type="radio" id="X4" name="X" value="1">1</td>
                    <td><label for="X5"></label><input type="radio" id="X5" name="X" value="2">2</td>
                </tr>
                <tr>
                    <td></td>
                    <td><label for="X6"></label><input type="radio" id="X6" name="X" value="3">3</td>
                    <td><label for="X7"></label><input type="radio" id="X7" name="X" value="4">4</td>
                    <td><label for="X8"></label><input type="radio" id="X8" name="X" value="5">5</td>
                </tr>
            </table>
            </p>
            <p>
                <label for="Y"> Y = </label>
                <input maxlength="9" id="Y" type="text" name="Y" placeholder="(-3 .. 3)"><br>
            </p>
            <table class="choicebox">
                <tr>
                    <td> R =</td>
                    <td><label for="R0"></label><input type="button" onclick="setR(1)" id="R0" name="R" value="1"></td>
                    <td><label for="R1"></label><input type="button" onclick="setR(2)" id="R1" name="R" value="2"></td>
                    <td><label for="R2"></label><input type="button" onclick="setR(3)" id="R2" name="R" value="3"></td>
                    <td><label for="R3"></label><input type="button" onclick="setR(4)" id="R3" name="R" value="4"></td>
                    <td><label for="R4"></label><input type="button" onclick="setR(5)" id="R4" name="R" value="5"></td>
                </tr>
            </table>
            <p></p>
            <input type="button" onclick="ask()" value=" Проверить ">
            <input type="button" onclick="reset()" value=" Сбросить ">
        </form>
    </div>
    <p></p>
    <div id="container frame">
        <table id="resultTable">
            <tr>
                <td>X</td>
                <td>Y</td>
                <td>R</td>
                <td>Результат</td>
                <td>Время</td>
            </tr>

            <% for (Cell cell : table.getTable()) {%>
            <tr>
                <td><%= cell.getX() %>
                </td>
                <td><%= cell.getY()%>
                </td>
                <td><%= cell.getR()%>
                </td>
                <td><%= cell.isResult()%>
                </td>
                <td><%= cell.getDate()%>
                </td>
            </tr>
            <%} %>
        </table>
    </div>
    <div>
        <img src="resources/pictures/barbie1.gif" width=50% height=50%>
    </div>
</main>
<footer>ИТМО<br>2020</footer>
</body>
</html>
