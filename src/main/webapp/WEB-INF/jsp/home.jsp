<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>

</head>
<body>
<style>
    @import url(https://fonts.googleapis.com/css?family=Sansita+One);

    body {
        background-color: burlywood;
        font-size: 20px;
    }

    .navbar-brand {
        margin-top: 10px;
        font-size: 50px;
        text-align: center;

    }
    .ml14 {
        border: 1px solid mediumseagreen;
        font-weight: 100;
        font-size: 1.6em;
        margin: 6%;
        padding: 0.5%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .ml14 .text-wrapper {
        position: relative;
        display: inline-block;
        padding-top: 0.1em;
        padding-right: 0.05em;
        padding-bottom: 0.15em;
    }



    .ml14 .letter {
        display: inline-block;
        line-height: 1em;

    }

    .container {
        background-color:transparent;
    }

    .big-button {
        margin-left: 300px;
        width:20%;

        background-color:#ccffcc;
        color: #000000;
        font-family: 'Sansita One', cursive;
        font-size: 23px;
        font-weight: 500;
        padding: 20px;
        height: 150px;
        text-decoration: none;
        text-transform: capitalize;


        -webkit-border-radius: 12px;
        -moz-border-radius: 12px;
        border-radius: 12px;

        -webkit-box-shadow: 0px 15px 0px #009933, 0px 10px 25px rgba(0,0,0,.5);
        -moz-box-shadow: 0px 15px 0px #009933, 0px 10px 25px rgba(0,0,0,.5);
        box-shadow: 0px 15px 0px #009933, 0px 10px 25px rgba(0,0,0,.5);

        margin: 10px auto;

        border-color: #66ff66;
        border-width: 10px;
        border-radius: 40px 100px 100px 100px;
    }

    .big-button:active {
        box-shadow: 0px 3px 0px #33CC33, 0px 3px 6px rgba(0,0,0,.9);
        position: relative;
        top: 10px;
    }




</style>

<nav class="navbar navbar-light bg-transparent">
    <a href="./home" class="navbar-brand">MyGreekRoots</a>
    <form class="form-inline">
        <a href="/home" class="btn btn-outline-success my-2 my-sm-0" type="button">Home</a>
        <a href="/aboutus" class="btn btn-outline-success my-2 my-sm-0" type="button">About Us</a>
        <a href="/seetree" class="btn btn-outline-success my-2 my-sm-0" type="button">My Tree</a>
        <a href="/chat" class="btn btn-outline-success my-2 my-sm-0" type="button">Chat</a>
        <a href="/logout" class="btn btn-outline-success my-2 my-sm-0" type="button">logout</a>
    </form>
</nav>
<br>





<div class="shadow"></div>

<p class="ml14">
<span class="text-wrapper">
<span class="letters">You can see our history <br> and what services do we offer</span>
<span class="line"></span>
</span>
</p>

<div class="container" align="center">
    <a href="/aboutus" class="big-button" data-action="submit">
        Learn More
    </a>
</div>

<p class="ml14">
  <span class="text-wrapper">
    <span class="letters">You can build your genealogical tree <br> by adding your ancestors with their wife and sibings <br> and by uploading documents in order to help other people <br> for their own research</span>
    <span class="line"></span>
  </span>
</p>

<div class="container" align="center">
    <a  href="/login" class="big-button" data-action="submit">
        Start Building
    </a>
</div>

<p class="ml14">
  <span class="text-wrapper">
    <span class="letters"> You can chat with other users in order to share information <br> everything else you would find interesting about the genealogy!</span>
    <span class="line"></span>
  </span>
</p>

<div class="container" align="center">
    <a href="/chat" class="big-button" data-action="submit">
        Chat Now
    </a>
</div>
<br>
<br>

</body>
</html>