<%@ page import="domain.model.Boek" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="nl">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reading club</title>
    <link rel="stylesheet" href="css/stijl.css">

</head>

<body>
<jsp:include page="Header.jsp">
    <jsp:param name="hier" value="Home"/>
</jsp:include>
<main>
    <section>
        <h1><span lang="ja">読書クラブ</span><br>Reading club</h1>
        <p>Op deze site voeg ik alle boeken toe die ik gelezen heb, en die ik aan het lezen ben om bij te houden hoeveel boeken ik doorheen het jaar lees. </p>
        <h2 >Enkele weetjes</h2>
        <p>Het dunste boek in de lijst is: ${dunsteBoek.titel}
            <br> Het dikste boek in de lijst is: ${diksteBoek.titel}
            <br> Gemiddelde aantal pagina's is: ${gemiddeldePagina}
        </p>
    </section>
</main>
<footer>
    &copy; Patryk Piekarz, webontwikkeling 2, 2021
</footer>
</body>


</html>