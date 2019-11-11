<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyGreekRoots</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">

    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>

    <style>
        body {
            background-color: burlywood;
        }

        .navbar-brand {
            color: black;
        }

        .a {
            font-size: 30px;
            color: white;
        }

        .p {
            margin-top: 50px;
            font-size: 50px;
            text-align: center;
            color: dimgrey;

        }

    </style>
</head>
<body>

<nav class="navbar navbar-light bg-light">
    <a href="./seetree" class="navbar-brand">MyGreekRoots</a>
    <form class="form-inline">
        <a href="/seetree" class="btn btn-outline-primary my-2 my-sm-0" type="button">Home</a>
        <a href="/aboutus" class="btn btn-outline-info my-2 my-sm-0" type="button">About Us</a>
        <a href="/chat" class="btn btn-outline-success my-2 my-sm-0" type="button">Chat</a>
        <a href="/logout" class="btn btn-outline-danger my-2 my-sm-0" type="button">logout</a>
    </form>
</nav>

<p class="p">My Greek Roots</p>


<%--    table>(th>tr*5)>(td>tr*5)>--%>
<form modelAttribute="userGo" action="showUsers" method="post" enctype="multipart/form-data" style="text-align: center;">
    <table border="1" style="margin: auto;" bgcolor="white">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Surname</th>
            <th>email</th>
            <th>Go</th>
        </tr>
        </thead>
        <c:forEach items="${User}" var="u">
            <tbody>
            <tr>
                <td>${u.iduser}</td>
                <td>${u.name}</td>
                <td>${u.surname}</td>
                <td>${u.email}</td>
                <td><a href="${pageContext.request.contextPath}/go/${u.iduser}"/>Go</td>
            </tr>
            </tbody>
        </c:forEach>

    </table>
    <br>
    <br>


    <div class="container">
        <div class="card-deck">

            <div class="card text-white bg-primary">
                <div class="card-body">
                    <a class="a" href="./buildtree" class="card-title">Continue Building</a>
                </div>
            </div>
        </div>
    </div>

</form>

</body>
</html>