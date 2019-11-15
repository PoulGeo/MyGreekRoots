<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Twister
  Date: 10/8/2019
  Time: 9:05 PM
  To change this template use File | Settings | File Templates.
--%>
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

        a {
            text-align: center;
            font-size: 30px;
            color: white;
        }

        #f1 {
            margin-top: 40px;
            color: green;
            text-align: center;
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

<p class="p">My Greek Roots</p>


<fieldset id="f1">
    <h4>Welcome to the Online Genealogy Museum</h4>
    <h4>Here you can save your genealogical tree and you can </h4>
    <h4>communicate with others to discover more ancestors of yours!</h4>
    <br>
    <p>Read the company policy (...)</p>
</fieldset>
<br>
<br>
<div class="container">
    <div class="card-deck">
        <a href="/book" class="card text-white bg-primary card-body card-title">Accept and continue</a>
    </div>
</div>
<br>
<br>


</body>
</html>
