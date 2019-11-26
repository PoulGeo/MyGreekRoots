<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style type="text/css">
        body {
            background-image: url("https://www.discovergreece.com/~/media/images/highlight-large-images/az/a/athens-city/acropolis-and-the-parthenon-at-night.ashx");
            background-size: cover;
            background-repeat: no-repeat;
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
            color: #ccffcc;

        }
        .error {

            text-align: center;
            background-color: antiquewhite;
          border: 1px red solid;
            color: black;
        }


    </style>


</head>
<body>

<p class="p">My Greek Roots</p>
<c:if test="${error ne null}">
    <div class="row">
        <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-3 col-sm-offset-2">
            <h1 class="error">${error}</h1>
        </div>
    </div>
</c:if>
<div class="bslf">
    <form action="/dologin" method="post">

        <h2 class="text-center">Please login</h2>
        <div class="form-group">
            <input type="text" class="form-control" name="email" placeholder="Username" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" required="required">
        </div>
        <div class="form-group clearfix">
            <label class="checkbox-inline pull-left"><input type="checkbox"> Remember me</label>
            <button type="submit" class="btn btn-primary pull-right">Log in</button>
        </div>
        <p>You are not a member yet? Sign up below!</p>
        <div class="clearfix">
            <a href="/signup" class="pull-right">Create an Account</a>
        </div>
    </form>
</div>


</body>

</body>
</html>