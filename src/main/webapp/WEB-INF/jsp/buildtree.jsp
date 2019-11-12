<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyGreekRoots</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            background-color: burlywood;
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

        .hint-text {
            display: flex;
            text-align: center;
        }

        .p {
            margin-top: 20px;
            font-size: 50px;
            text-align: center;
            color: dimgrey;

        }
    </style>


</head>
<body>
<p class="p">My Greek Roots</p>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-3 col-sm-offset-2">
            <div class="register-form">
                <%--@elvariable id="person" type="com.roots.Roots.model"--%>
                <spring:form modelAttribute="person" action="personForm" method="post">
                <h2 class="text-center">Build Your Tree</h2>
                <h3 class="hint-text">You have to add the person (father) of the exact previous generation, where you have left!
                    <br> <br>  if you have not added anyone, then add your father in the form!</h3>
                <br>
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <spring:input path="name" type="text" name="name" class="form-control" placeholder="name"/>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <spring:input type="text" path="dates" name="dates" class="form-control"
                                          placeholder="dates of birth - death"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <spring:input type="text" path="info" name="info" class="form-control" placeholder="more info"/>
                </div>
                <div class="form-group">
                    <spring:input type="text" path="wife" name="wife" class="form-control" placeholder="wife's name"/>
                </div>
                <div class="form-group">
                    <spring:input type="text" path="wifedates" name="wifedates" class="form-control"
                                  placeholder="wife's dates of birth - death"/>
                </div>
                    <div class="form-group">

                    <spring:input type="text" path="wifeinfo" name="wifeinfo" class="form-control"
                              placeholder="wife's more info"/>
                    </div>
                    <div class="form-group">
                <spring:input type="text" path="siblings" name="siblings" class="form-control"
                              placeholder="siblings' name only"/>
                </div>

    <div class="row">
        <div class="col-md-4 col-xs-12">
            <div class="form-group">
                <input type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" style="margin-left: auto" tabindex="8">
            </div>
        </div>
    </div>
    </spring:form>
</div>
</div>
</div>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</body>
</html>