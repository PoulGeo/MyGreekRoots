<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

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


    <style type="text/css">
        body {
            background-color: burlywood;
        }

        .bslf {
            width: 350px;
            margin: 120px auto;
            padding: 25px 20px;
            background: #3a1975;
            box-shadow: 2px 2px 4px #ab8de0;
            border-radius: 5px;
            color: #fff;
        }

        .bslf h2 {
            margin-top: 0px;
            margin-bottom: 15px;
            padding-bottom: 5px;
            border-radius: 10px;
            border: 1px solid #25055f;
        }

        .bslf a {
            color: #783ce2;
        }

        .bslf a:hover {
            text-decoration: none;
            color: #03A9F4;
        }

        .bslf .checkbox-inline {
            padding-top: 7px;
        }

        .p {
            margin-top: 50px;
            font-size: 50px;
            text-align: center;
            color: dimgrey;

        }
        input{
            width: 320px;
            height: 30px;
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


<div class="bslf">
    <form action="/searchSurname" method="post">

        <div class="form-group">
            <h3>Write the surname you want to search below:</h3>
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="surname" placeholder="Search by surname..." required="required">
        </div>
        <br>
        <div class="form-group clearfix">
            <button type="submit" class="btn btn-primary pull-right">Search</button>
        </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</div>
</body>
</html>