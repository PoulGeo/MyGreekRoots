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
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    <style>
        body{
            background-image: url("https://www.oirizes.gr/wp-content/uploads/2017/12/background.png");
            /* Full height */
            height: 100%;

            /* Create the parallax scrolling effect */
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;

        }

        .logo{
            width: 500px;
            height: 500px;

        }
        .book{
            width: 400px;
            height: 600px;
        }
        .table{
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;
        }

        div {
            display: inline-block;
        }

        .bigger {
            margin: 0;
            font-size: 40px;
            font-weight: 200;
            padding: 20px;
            text-transform: uppercase;
            color: #202020;
            display: inline-block;
            position: relative;
        }

        .text {
            max-width: 600px;
            width: 100%;
            line-height: 24px;
            text-align: left;
            color: #404040;
            padding: 20px;
        }

        .text.txt-center {
            text-align: center;
        }

        .text a {
            color: #0fe4d2;
        }

        .has-animation {
            position: relative;
        }

        .has-animation p, .has-animation img {
            opacity: 0;
        }

        .has-animation.animate-in p, .has-animation.animate-in img {
            animation: textHidden 0.1s 1.1s forwards;
        }

        .has-animation.animate-in:before, .has-animation.animate-in:after {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            height: 100%;
            z-index: 10;
        }

        .has-animation.animate-in:before {
            background-color: teal;
        }

        .has-animation.animate-in:after {
            background-color: yellowgreen;
            animation-delay: .5s;
        }

        .has-animation.animation-ltr.animate-in:before {
            animation: revealLTR 1.8s ease;
        }

        .has-animation.animation-ltr.animate-in:after {
            animation: revealLTR 1s .6s ease;
        }

        .has-animation.animation-rtl.animate-in:before {
            animation: revealRTL 1.8s ease;
        }

        .has-animation.animation-rtl.animate-in:after {
            animation: revealRTL 1s .6s ease;
        }

        @keyframes revealRTL {
            0% {
                width: 0;
                right: 0;
            }
            65% {
                width: 100%;
                right: 0;
            }
            100% {
                width: 0;
                right: 100%;
            }
        }

        @keyframes revealLTR {
            0% {
                width: 0;
                left: 0;
            }
            65% {
                width: 100%;
                left: 0;
            }
            100% {
                width: 0;
                left: 100%;
            }
        }

        @keyframes textHidden {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }
        .navbar-brand {
            margin-top: 10px;
            font-size: 50px;
            text-align: center;
            color: dimgrey;

        }


        .notice {
            padding: 15px;
            background-color: #fafafa;
            border-left: 6px solid #7f7f84;
            margin-bottom: 10px;
            -webkit-box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
            -moz-box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
            box-shadow: 0 5px 8px -6px rgba(0, 0, 0, .2);
        }

        .notice-sm {
            background-color: transparent;
            border: 1px solid mediumseagreen;
            padding: 20px;
            font-size: 20px;
        }


        .notice-danger {
            background-color: transparent;
            border: 1px solid mediumseagreen;
            padding: 30px;
        }
        .notice{
            background: whitesmoke;
        }
        .bigger{
            background: whitesmoke;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-light bg-transparent">
    <a href="./home" class="navbar-brand">MyGreekRoots</a>
    <form class="form-inline">
        <a href="/home" class="btn btn-outline-success my-2 my-sm-0" type="button">Home</a>
        <a href="/aboutus" class="btn btn-outline-success my-2 my-sm-0" style="background: green; color: black" type="button">About Us</a>
        <a href="/search" class="btn btn-outline-success my-2 my-sm-0" type="button">Search</a>
        <a href="/seetree" class="btn btn-outline-success my-2 my-sm-0" type="button">My Tree</a>
        <a href="/chat" class="btn btn-outline-success my-2 my-sm-0" type="button">Chat</a>
        <a href="/logout" class="btn btn-outline-success my-2 my-sm-0" type="button">logout</a>
    </form>
</nav>
<br>
<br>
<br>

<div class="table">


    <br>
    <div class="has-animation animation-ltr" data-delay="10">
        <p class="bigger">About Us</p>
    </div>


    <br>
    <br>
    <div class="container">

        <div class="has-animation animation-rtl" data-delay="1000">
            <p class="text">
            <div class="notice notice-danger">
                The journey with the archives started at 1980, as a hobby. <br>
                The constant discovery in the written sources was transformed into great love and passion about this
                occupation. <br>
            The first station was the book called -Petrina since 17th century (1989)-, which is a tribute to my
            birthplace.
            <br>
            This book includes all the family genealogical trees and history of the residents of this village from 1633
            until 1989. <br>

            The second station was the recognition of my work by the Neohellenic Research Center, <br>
            with a first "Private contract for a project" (1993), with an upward and profitable course. <br>

            The third station was in 1994 when OI RIZES were born. <br>
            The research has gradually emerged as an independent business, unique in Greece. <br>

            Since then, each new assignment is a new station! <br>
            The journey is keep going on!
            Our Office, based on the irrefutable evidence of the research, <br>
            attract the interest of many people in Greece and abroad, giving value and prestige to every search. <br>
            The Founder Aris Poulimenakos


        </div>
            </p>
        </div>

        <br>
        <br>

        <img class="book" src="https://www.oirizes.gr/wp-content/uploads/2017/12/%CE%92%CE%B9%CE%B2%CE%BB%CE%AF%CE%BF--773x1024.jpg"
             alt="book">

        <br>
        <br>

<%--        <div class="has-animation animation-ltr" data-delay="1000">--%>
            <p class="bigger">Occupation</p>
<%--        </div>--%>
        <br>
        <br>

<%--        <div class="has-animation animation-rtl" data-delay="2600">--%>
            <div class="notice notice-danger">
                <ul>
                    <li> Family's historical data (ancestors)</li>
                    <li> Documentation of genealogical data</li>
                    <li> Gradual creation of the genealogical tree</li>
                    <li> Genealogical panel - A brief family history</li>
                    <li> Historical records and persons in old archives</li>
                    <li> Documented genealogical connection with the Greeks of Diaspora abroad to their place of origin</li>
                    <li> Old property titles, concessions from 1827 to 1913</li>
                </ul>
            </div>
<%--        </div>--%>



    </div>

    <img class="logo" src="https://www.oirizes.gr/wp-content/uploads/2017/12/logo_new_2018.png" alt="label">


    <script>
        $(document).ready(function () {
            $('.has-animation').each(function (index) {
                $(this).delay($(this).data('delay')).queue(function () {
                    $(this).addClass('animate-in');
                });
            });
        });

    </script>


</body>
</html>
