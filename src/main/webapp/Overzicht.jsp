<%@ page import="domain.model.Boek" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: smigi
  Date: 07/03/2021
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="nl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reading club - Overzicht</title>
    <link rel="stylesheet" href="css/stijl.css">

</head>

<body>
<jsp:include page="Header.jsp">
    <jsp:param name="hier" value="Overzicht"/>
</jsp:include>
<main>
    <section>
        <h1>Overzicht van alle boeken</h1>
        <div>
            <table>
                <thead>
                <tr class = "logtable">
                    <th>Titel boek</th>
                    <th>Auteur</th>
                    <th>Aantal pagina's</th>
                    <th>Score</th>
                    <th>Update</th>
                    <th>Verwijderen</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="boek" items="${alleboeken}">
                <tr>
                    <td>${boek.titel}</td>
                    <td>${boek.autheur}</td>
                    <td>${boek.pagina}</td>
                    <td>${boek.score}</td>
                    <td><a href="BoekForm?command=updatePage&titel=${boek.titel}&autheur=${boek.autheur}&pagina=${boek.pagina}&score=${boek.score}">Update</a></td>
                    <td><a href="BoekForm?command=deleteConfirmation&titel=${boek.titel}&autheur=${boek.autheur}">Verwijder</a></td>

                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </section>
</main>
<footer>
    &copy; Patryk Piekarz, webontwikkeling 2, 2021
</footer>
</body>

</html>
