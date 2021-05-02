<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: smigi
  Date: 07/03/2021
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reading club - Boek updaten</title>
    <link rel="stylesheet" href="css/stijl.css">

</head>

<body>
<header>
    <nav>
        <ul>
            <li>
                <a href="BoekForm">Home</a>
            </li>
            <li class="hier">
                <a href="BoekForm?command=BoekToevoegen">Boek Toevoegen</a>
            </li>
            <li>
                <a href="BoekForm?command=Overzicht">Overzicht</a>
            </li>
            <li>
                <a href="BoekForm?command=searchPage">Search</a>
            </li>
        </ul>
    </nav>
</header>
<main>

    <section>
        <h1>
            Item updaten
        </h1>
        <c:if test="${not empty errors}">
            <div class="alerts">
                <ul>
                    <c:forEach items="${errors}" var="error">
                        <li>
                            ${error}
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </c:if>
        <p>Titel boek: ${titelpreviuousValue}</p>

        <form action="BoekForm?command=update&titel=${titelpreviuousValue}" method="POST" novalidate>

            <label for="autheur">Autheur:</label><br>
            <input type="text" id="autheur" name="autheur" value="${autheurpreviuousValue}" required><br>

            <label for="pagina">Aantal pagina's:</label><br>
            <input type="text" id="pagina" name="pagina" value="${paginapreviuousValue}" required><br>

            <label for="id_select">Score:</label><br>
            <select id="id_select" name="score">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
            </select><br>
            <input type="submit" class="submit" value=Updaten>
        </form>
    </section>
</main>
<footer>
    &copy; Patryk Piekarz, webontwikkeling 2, 2021
</footer>
</body>

</html>