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



</head>
<body>

<style type="text/css">
    body {
        background-color: burlywood;
    }
    .register-form{
        margin: 50px auto;
        padding: 25px 20px;
        background: #3a1975;
        box-shadow: 2px 2px 4px #ab8de0;
        border-radius: 5px;
        color: #fff;
    }
    .register-form h2{
        margin-top: 0px;
        margin-bottom: 15px;
        padding-bottom: 5px;
        border-radius: 10px;
        border: 1px solid #25055f;
    }
    .p{
        margin-top: 50px;
        font-size: 50px;
        text-align: center;
        color: dimgrey;

    }
</style>

<p class="p">My Greek Roots</p>

<div class="container">
    <div class="row">
        <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-3 col-sm-offset-2">
            <div class="register-form">
                <%--@elvariable id="personUpd" type="com.roots.Roots.model"--%>
                <spring:form modelAttribute="personUpd" action="${pageContext.request.contextPath}/personFormUpd" method="post">
                <h2 class="text-center">Build Your Tree</h2>
                <p class="hint-text">Update here this person you have chosen!</p>

                    <div class="form-group">
                        <spring:input path="type" type="hidden" name="type" value="${p.type}" class="form-control"/>
                    </div>

                <div class="row">
                    <spring:input path="idperson" type="hidden" name="idperson" value="${p.idperson}" class="form-control"/>

                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <spring:input path="name" type="text" name="name" class="form-control" placeholder="name"/>
                        </div>
                    </div>
                    <div class="col-md-6 col-xs-12">
                        <div class="form-group">
                            <spring:input type="text" path="dates" name="dates" class="form-control" placeholder="dates of birth - death" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <spring:input type="text" path="info" name="info" class="form-control" placeholder="more info" />
                </div>
                <div class="form-group">
                    <spring:input type="text" path="wife" name="wife" class="form-control" placeholder="wife's name" />
                </div>
                <div class="form-group">
                    <spring:input type="text" path="wifedates" name="wifedates" class="form-control" placeholder="wife's dates of birth - death" />
                </div class="form-group">
                    <div  class="form-group">
                    <spring:input type="text" path="wifeinfo" name="wifeinfo" class="form-control" placeholder="wife's more info" />
                </div  class="form-group">
                <div class="form-group">
                    <spring:input type="text" path="siblings" name="siblings" class="form-control"
                                  placeholder="siblings' name only"/>
                </div  class="form-group">

            <div class="row">
                <div class="col-md-6 col-xs-12">
                    <div class="form-group">
                        <input type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" style="margin-left: auto" tabindex="8">
                    </div>
                    <div class="form-group">
                        <a  href="/upload"  class="btn btn-success btn-block btn-lg" style="margin-left: auto" tabindex="8">
                            Upload Documents</a>
                    </div>
                </div>
            </div>
            </spring:form>
        </div>
    </div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</body>
</html>