<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyGreekRoots</title>


    <link rel="stylesheet" href=
            "https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src=
                    "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>

    <script src=
                    "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
    </script>

    <script src=
                    "https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
    </script>



    <style>
        body {
            background-color: burlywood;
        }
        .navbar{
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-brand {
            margin-top: 10px;
            font-size: 50px;
            text-align: center;

        }
        form{
            margin-left: 10%;
            max-width: 80%;
        }
    </style>

</head>
<body>

<nav class="navbar navbar-light bg-transparent">
    <a href="./home" class="navbar-brand">MyGreekRoots</a>
    <form class="form-inline">
        <a href="/home" class="btn btn-outline-success my-2 my-sm-0" type="button">Home</a>
        <a href="/aboutus" class="btn btn-outline-success my-2 my-sm-0" type="button">About Us</a>
        <a href="/search" class="btn btn-outline-success my-2 my-sm-0" type="button">Search</a>
        <a href="/seetree" class="btn btn-outline-success my-2 my-sm-0" type="button">My Tree</a>
        <a href="/chat" class="btn btn-outline-success my-2 my-sm-0" type="button">Chat</a>
        <a href="/logout" class="btn btn-outline-success my-2 my-sm-0" type="button">logout</a>
    </form>
</nav>


<br>
<br>
<br>

    <form modelAttribute="userGo" action="showUsers" method="post" enctype="multipart/form-data" style="text-align: center;">
        <table class="table table-striped table-light" border="1" style="margin: auto;" bgcolor="white">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>
                <th>email</th>
                <th style="background-color: lightskyblue; font-weight: bold">Go</th>
            </tr>
            </thead>
            <c:forEach items="${User}" var="u">
                <tbody>
                <tr>
                    <td>${u.iduser}</td>
                    <td>${u.name}</td>
                    <td>${u.surname}</td>
                    <td>${u.email}</td>
                    <td style="background-color: lightskyblue; font-weight: bold;"><a href="${pageContext.request.contextPath}/search/${u.iduser}"><img src="view.jpg" alt="view"></a></td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
    </form>

<br>



</body>
</html>