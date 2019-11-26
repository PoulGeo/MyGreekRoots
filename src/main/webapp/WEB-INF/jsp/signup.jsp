<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
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

    <style>
        body {
            background-image: url("https://www.discovergreece.com/~/media/images/highlight-large-images/az/a/athens-city/acropolis-and-the-parthenon-at-night.ashx");
            background-size: cover;
            background-repeat: no-repeat;
        }
        .register-form {
            margin: 50px auto;
            padding: 25px 20px;
            background: #3a1975;
            box-shadow: 2px 2px 4px #ab8de0;
            border-radius: 5px;
            color: #fff;
        }

        .register-form h2 {
            margin-top: 0px;
            margin-bottom: 15px;
            padding-bottom: 5px;
            border-radius: 10px;
            border: 1px solid #25055f;
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
            border: 1px  solid red;
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

<div class="container">
    <div class="row">
        <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-3 col-sm-offset-2">
            <div class="register-form">
                <%--@elvariable id="mUser" type="com.roots.Roots.model"--%>
                <spring:form modelAttribute="mUser" action="userform" method="post">
                <h2 class="text-center">Registration</h2>
                <p class="hint-text">Create your account. It's free and takes just a minute.</p>
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <spring:input type="text" path="name" name="name" class="form-control"
                                          placeholder="First Name" required="true" />
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <spring:input type="text" path="surname" name="surnname" class="form-control"
                                          placeholder="Last Name" required="true"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <spring:input type="email" path="email" name="email" class="form-control" placeholder="Email" required="true"/>
                </div>
                <div class="form-group">
                    <spring:input type="password" name="password" class="form-control" placeholder="Password"
                                  path="password" required="true"/>
                </div>
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7">
                        </div>
                    </div>
                </div>
            </div>
            </spring:form>
        </div>
    </div>
</div>



</body>
</html>