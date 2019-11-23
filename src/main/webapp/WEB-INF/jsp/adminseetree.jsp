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

        h5 {
            text-align: center;
            color: grey;
        }

        a {
            font-size: 30px;
            color: white;
        }


    </style>
</head>
<body>

<br>
<br>
<h5>Genealogical Tree</h5>
<%--    table>(th>tr*5)>(td>tr*5)>--%>
<form modelAttribute="personUpd" action="showPersons" method="post" enctype="multipart/form-data"
      style="text-align: center;">
    <table class="table table-striped table-light" border="1" style="margin: auto; width: 70%;" bgcolor="white">
        <thead>
        <tr>
            <th>Name</th>
            <th style="background-color: darkgrey">Dates</th>
            <th>Info</th>
            <th style="background-color: darkgrey">Wife Name</th>
            <th>Wife Dates</th>
            <th style="background-color: darkgrey">Wife Info</th>
            <th>Siblings</th>
        </tr>
        </thead>
        <c:forEach items="${Person}" var="p">
            <tbody>
            <tr>
                <td scope="col">${p.name}</td>
                <td style="background-color: darkgrey" scope="col">${p.dates}</td>
                <td scope="col">

                    <c:if test="${not empty p.info}">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#modal-${p.idperson}">
                            ReadMore
                        </button>
                        <div class="modal fade" id="modal-${p.idperson}" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">More Info</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            ${p.info}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>

                </td>
                <td style="background-color: darkgrey" scope="col">${p.wife}</td>
                <td scope="col">${p.wifedates}</td>
                <td style="background-color: darkgrey" scope="col">


                    <c:if test="${not empty p.wifeinfo}">
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                data-target="#modal1-${p.idperson}">
                            ReadMore
                        </button>
                        <div class="modal fade" id="modal1-${p.idperson}" tabindex="-1" role="dialog"
                             aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">More Info</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                            ${p.wifeinfo}
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>


                </td>
                <td scope="col">${p.siblings}</td>

            </tr>
            </tbody>
        </c:forEach>

    </table>
    <br>

    <h5>Documents</h5>


    <br>
    <form modelAttribute="Image" action="showPersons" method="post" enctype="multipart/form-data"
          style="text-align: center;">
        <table class="table table-striped table-light" border="1" style="margin: auto; width: 70%;" bgcolor="white">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col" style="background-color: darkgrey">Name</th>
                <th scope="col">Image</th>
                <th scope="col">Download</th>
            </tr>
            </thead>
            <c:forEach items="${Dbfile}" var="f">
                <tbody>
                <tr>
                    <td>${f.id}</td>
                    <td style="background-color: darkgrey">${f.filename}</td>
                    <td><img src="data:image/jpg;base64,${f.base64Image}" width="100" height="100" alt="document"></td>
                    <td><a href="${pageContext.request.contextPath}/downloadFile/${f.id}"
                           style="color: blue">Download</a></td>
                </tr>
                </tbody>
            </c:forEach>

        </table>
        <br>
        <br>


    </form>

</body>
</html>