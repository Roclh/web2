<%--
  Created by IntelliJ IDEA.
  User: dom-c
  Date: 16.11.2020
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="">
<head>
  <meta charset="utf-8">
  <title>Web, Lab1, Kolesnikov Nikita</title>
  <link rel="shortcut icon" href="resources/pictures/favicon.ico" type="image/x-icon">

  <style>
    <%@include file="resources/css/style.css"%>
  </style>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
  <script src="resources/scripts/script.js"> </script>

</head>
<body>
<img class="flying" src="resources/pictures/fairy1.gif" width="100px" height="200px">
<header>
  <h1>Веб-программирование, Лаб. 1, Вариант 2109</h1>
  <div><p id="credit"><img src="resources/pictures/hearts.gif" width="40" height="20"> <a id = "git" href="https://github.com/roclh" title="Перейти к профилю Github разработчика">Колесников Никита Алексеевич, P3210</a> <img src="resouces/pictures/hearts.gif" width="40" height="20"></p></div>
</header>
<aside>
  <div><img src="resources/pictures/barbie2.gif" width = 100px height = 500px></div>
  <div><img src="resources/pictures/barbie2.gif" width = 100px height = 500px></div>
  <div><img src="resources/pictures/barbie2.gif" width = 100px height = 500px></div>
  <div><img src="resources/pictures/barbie2.gif" width = 100px height = 500px></div>
</aside>
<main>

  <div class = "container task">
    <h4>Разработанная HTML-страница должна удовлетворять следующим требованиям:</h4>
    <h5>•Для расположения текстовых и графических элементов необходимо использовать блочную верстку.<br>
      •Данные формы должны передаваться на обработку посредством POST-запроса.<br>
      •Таблицы стилей должны располагаться в самом веб-документе.<br>
      •При работе с CSS должно быть продемонстрировано использование селекторов элементов, селекторов дочерних элементов, селекторов потомств, селекторов псевдоклассов а также такие свойства стилей CSS, как наследование и
      каскадирование.<br>
      •HTML-страница должна иметь "шапку", содержащую ФИО студента, номер группы и новер варианта. При оформлении шапки необходимо явным образом задать шрифт (fantasy), его цвет и размер в каскадной таблице стилей.<br>
      •Отступы элементов ввода должны задаваться в процентах.<br>
      •Страница должна содержать сценарий на языке JavaScript, осуществляющий валидацию значений, вводимых пользователем в поля формы. Любые некорректные значения (например, буквы в координатах точки или отрицательный
      радиус) должны блокироваться.</h5>

  </div>
  <div></div><img src="resources/pictures/quest.png" ></div>
  <p></p>
  <div class = "container form">
    <form id="main-form">
      <p>
      <table class="radio">
        <tr>
          <td></td>
          <td><label for="X0"></label><input type="radio" id="X0" name="X" value="-2">-2</td>
          <td><label for="X1"></label><input type="radio" id="X1" name="X" value="-1.5">-1.5</td>
          <td><label for="X2"></label><input type="radio" id="X2" name="X" value="-1">-1</td>
        </tr>
        <tr>
          <td> X = </td>
          <td><label for="X3"></label><input type="radio" id="X3" name="X" value="-0.5">-0.5</td>
          <td><label for="X4"></label><input type="radio" id="X4" name="X" value="0">0</td>
          <td><label for="X5"></label><input type="radio" id="X5" name="X" value="0.5">0.5</td>
        </tr>
        <tr>
          <td></td>
          <td><label for="X6"></label><input type="radio" id="X6" name="X" value="1">1</td>
          <td><label for="X7"></label><input type="radio" id="X7" name="X" value="1.5">1.5</td>
          <td><label for="X8"></label><input type="radio" id="X8" name="X" value="2">2</td>
        </tr>
      </table>
      </p>
      <p class = "input_Y">
        <label for="Y"> Y = </label>
        <input maxlength="9" id="Y" type="text" name="Y" placeholder="(-3 .. 5)"><br>
      </p>
      <table class="choicebox">
        <tr>
          <td> R = </td>
          <td><label for="R0"></label><input type="checkbox" id="R0" name="R" value="1">1</td>
          <td><label for="R1"></label><input type="checkbox" id="R1" name="R" value="1.5">1.5</td>
          <td><label for="R2"></label><input type="checkbox" id="R2" name="R" value="2">2</td>
          <td><label for="R3"></label><input type="checkbox" id="R3" name="R" value="2.5">2.5</td>
          <td><label for="R4"></label><input type="checkbox" id="R4" name="R" value="3">3</td>
        </tr>
      </table>
      <p></p>
      <input type="button" onclick="ask()" value=" Проверить ">
      <input type="button" onclick="reset()" value=" Сбросить ">
    </form>
  </div>
  <p></p>
  <div id = "container frame">
    <table id="resultTable">
      <tr>
        <td>X</td>
        <td>Y</td>
        <td>R</td>
        <td>Результат</td>
        <td>t сейчас</td>
        <td>t выполнения</td>
      </tr>
    </table>
  </div>
  <div>
    <img src="resources/pictures/barbie1.gif" width = 50% height = 50%>
  </div>
</main>
<footer>ИТМО<br>2020</footer>
</body>
</html>
